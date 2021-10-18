//The setup function is called once at startup of the sketch


const int LED_PIN = LED_BUILTIN;

const int SCA_CLK = 2; // H1
const int SCA_DATA_IN = 3; // H2
const int SCA_RESET = 4; // H3
const int SCA_DATA_OUT = 5; // H4
const int FLIP_CLK = 6; // H5
const int SHIFT_OUT_DATA = 7; // H7
const int SHIFT_OUT_ENABLE = 8; // H8
const int SHIFT_OUT_CLK = 9; // H9

const int FLIP_FREQ = 20000;
const int bitbang_delay_unit = 2; // in microseconds

int8_t fpga_message[8000] = { 0 };
int8_t fpga_message_echo[8000] = { 0 };

bool pins_engaged = false;

void send_to_fpga(int8_t *data, int8_t *echo, int16_t len);

void configure_pins() {
	/*if (pins_engaged)
		return;*/
	pinMode(LED_PIN, OUTPUT);

	pinMode(SCA_CLK, OUTPUT);
	pinMode(SCA_DATA_IN, OUTPUT);
	pinMode(SCA_RESET, OUTPUT);
	pinMode(SCA_DATA_OUT, INPUT);
	pinMode(FLIP_CLK, OUTPUT);
	pinMode(SHIFT_OUT_DATA, INPUT);
	pinMode(SHIFT_OUT_ENABLE, OUTPUT);
	pinMode(SHIFT_OUT_CLK, OUTPUT);

	digitalWrite(SCA_RESET, HIGH);
	digitalWrite(SCA_DATA_IN, HIGH);
	digitalWrite(SCA_CLK, HIGH);
	digitalWrite(SHIFT_OUT_ENABLE, LOW);
	digitalWrite(SHIFT_OUT_CLK, HIGH);

	analogWriteFrequency(FLIP_CLK, FLIP_FREQ);
	analogWrite(FLIP_CLK, 126);
	//pins_engaged = true;
}

void disengage_pins() {
	/*if (!pins_engaged)
		return;*/
	pinMode(LED_PIN, INPUT);
	pinMode(SCA_CLK, INPUT);
	pinMode(SCA_DATA_IN, INPUT);
	pinMode(SCA_RESET, INPUT);
	pinMode(SCA_DATA_OUT, INPUT);
	pinMode(FLIP_CLK, INPUT);
	pinMode(SHIFT_OUT_DATA, INPUT);
	pinMode(SHIFT_OUT_ENABLE, INPUT);
	pinMode(SHIFT_OUT_CLK, INPUT);
	//pins_engaged = false;
}

void setup() {
// Add your initialization code here
	Serial.begin(115200);
	disengage_pins();
}

void serial_read_flush(void) {
	while (Serial.available())
		Serial.read();
}

bool write_to_fpga_verify(int8_t* message, int8_t* message_echo, int16_t data_len) {

	send_to_fpga(fpga_message, fpga_message_echo, data_len);
	send_to_fpga(fpga_message, fpga_message_echo, data_len);

	for (int16_t i = 0; i < data_len; i++) {
		if (fpga_message[i] != fpga_message_echo[i]) {
			return 1;
		}
	}

	return 0;
}

int16_t read_integer() {
	int n = 0;
	char c;
	char ni_dg[4] = { 0 };
	while (n != 4) {
		if (Serial.available()) {
			c = Serial.read();
			if (!isDigit(c)) {
				//Serial.println("going back");
				break;
			}

			ni_dg[n++] = c;
		}
	}

	//Serial.print("num inputs: ");
	for (int i = 0; i < 4; i++) {
		//Serial.print(ni_dg[i]);
		ni_dg[i] -= 0x30;
	}
	//Serial.println();

	int16_t num = ni_dg[0] * 1000 + ni_dg[1] * 100 + ni_dg[2] * 10
			+ ni_dg[3];

	serial_read_flush();

	return num;
}

// The loop function is called in an endless loop
void loop() {
//Add your repeated code here

	int16_t n = 0;
	char c = 0;
	int16_t num_inputs = -1; // default num ins
	int16_t num_outputs = -1;
	int16_t data_len = 1;

	while (1) {
		l1:
		if (Serial.available()) {
			c = Serial.read();
			if (c == 'r') {
				Serial.println("reseting FPGA");
				reset_fpga();
				serial_read_flush();
			}
			else if (c == 'k') {
				// disengage all inputs
				disengage_pins();
				serial_read_flush();
				Serial.println("pins disengaged");
			}
			else if (c == 'e') {
				configure_pins();
				serial_read_flush();
				Serial.println("pins engaged");
			}
			else if (c == 'c') { // set number of inputs
				Serial.print("input number config: ");
				num_inputs = read_integer();
				Serial.print("configured num inputs as: ");
				Serial.println(num_inputs);
				serial_read_flush();
			}
			else if (c == 'x') { // set number of outputs
				Serial.print("output number config: ");
				num_outputs = read_integer();
				Serial.print("configured num outputs as: ");
				Serial.println(num_outputs);
				serial_read_flush();
			}
			else if (c == 'o') { // read output from FPGA
				if (num_outputs == -1 || num_outputs == 0) {
					Serial.println("num outputs not configured yet");
					serial_read_flush();
					goto l1;
				}
				//configure_pins();
				read_fpga_output(fpga_message, num_outputs);

				Serial.print("read output: ");
				for (int16_t i = 0; i < num_outputs; i++) {
					Serial.print(fpga_message[i]);
				}
				Serial.println();

			}
			else if (c == 'i') {
				if (num_inputs == -1 || num_inputs == 0) {
					Serial.println("num inputs not configured yet");
					serial_read_flush();
					goto l1;
				}
				/*
				 Serial.println("enter flip bit index: ");
				 serial_read_flush();
				 while(!Serial.available());
				 bitindex = Serial.parseInt();

				 bitindex = bitindex % num_inputs;

				 Serial.print("bit index is : ");
				 Serial.println(bitindex, DEC);
				 serial_read_flush();
				 */

				/*
				 Serial.print("enter input values (");
				 Serial.print(num_inputs);
				 Serial.println("): ");
				 */
				//configure_pins();
				data_len = num_inputs * 2;

				//serial_read_flush();

				n = 0;
				while (n <= data_len - 1) {
					if (Serial.available()) {
						c = Serial.read();
						if ((c != '0' && c != '1') || c == 'r') {
							Serial.println("going back");
							goto l1;
						}

						fpga_message[n++] = (c == '1');
						Serial.print(c);
					}
				}

				/*Serial.print("input bits: ");
				 for (uint16_t i = 0; i < num_inputs; i++) {
				 Serial.print(fpga_message[i]);
				 }
				 Serial.println();
				 serial_read_flush();*/

				/*
				 for (uint16_t j = 0; j < 16; j++) {
				 fpga_message[data_len - j - 1] = (bitindex >> j) & 0x01;
				 }
				 */

				/*
				 Serial.print("fpga message     : ");
				 for (uint16_t i = 0; i < data_len; i++) {
				 Serial.print(fpga_message[i]);
				 }
				 Serial.print("  ");
				 */
				/*Serial.print("data len ");
				Serial.println(data_len);*/

				if (write_to_fpga_verify(fpga_message, fpga_message_echo, data_len)) {
					Serial.println("failed");
					goto l1;
				}
				else {
					Serial.println("success");
				}

				//Serial.println("fpga message sent!");

				/*
				 Serial.print("fpga message echo: ");
				 for (uint16_t i = 0; i < data_len; i++) {
				 Serial.print(fpga_message_echo[i]);
				 }
				 Serial.println();
				 */

				//serial_read_flush();
			}
		}
	}

	/*digitalWrite(ledpin, HIGH);
	 delayMicroseconds(100);
	 digitalWrite(ledpin, LOW);*/
}

void send_to_fpga(int8_t *data, int8_t *echo, int16_t len) {
	digitalWrite(SCA_DATA_IN, HIGH);
	digitalWrite(SCA_CLK, HIGH);
	delayMicroseconds(bitbang_delay_unit);
	for (int16_t i = len - 1; i != -1; i--) {
	//for (int16_t i = 0; i < len; i++) {
		echo[i] = (digitalRead(SCA_DATA_OUT) == HIGH);
		digitalWrite(SCA_DATA_IN, data[i] == 0 ? LOW : HIGH);
		delayMicroseconds(bitbang_delay_unit);
		digitalWrite(SCA_CLK, LOW); // take clock low
		delayMicroseconds(bitbang_delay_unit); // another wait
		digitalWrite(SCA_CLK, HIGH);
		delayMicroseconds(bitbang_delay_unit); // another wait
	}

	digitalWrite(SCA_CLK, HIGH);
	digitalWrite(SCA_DATA_IN, HIGH);
}

void read_fpga_output(int8_t data[], int16_t len) {
	const int delay = 10000;
	digitalWrite(SHIFT_OUT_ENABLE, LOW);
	digitalWrite(SHIFT_OUT_CLK, HIGH);
	delayMicroseconds(delay);
	digitalWrite(SHIFT_OUT_CLK, LOW);
	delayMicroseconds(delay);
	digitalWrite(SHIFT_OUT_CLK, HIGH);
	delayMicroseconds(delay);
	digitalWrite(SHIFT_OUT_ENABLE, HIGH);
	delayMicroseconds(delay);

	for (int16_t i = len - 1; i != -1; i--) {
	//for (int16_t i = 0; i < len; i++) {
		data[i] = (digitalRead(SHIFT_OUT_DATA) == HIGH);
		delayMicroseconds(delay);
		digitalWrite(SHIFT_OUT_CLK, LOW); // take clock low
		delayMicroseconds(delay); // another wait
		digitalWrite(SHIFT_OUT_CLK, HIGH);
		delayMicroseconds(delay); // another wait
	}

	digitalWrite(SHIFT_OUT_CLK, HIGH);
	digitalWrite(SHIFT_OUT_ENABLE, LOW);
}

void reset_fpga() {
	delayMicroseconds(100);
	digitalWrite(SCA_RESET, HIGH);
	delayMicroseconds(100);
	digitalWrite(SCA_RESET, LOW);
	delayMicroseconds(100);
	digitalWrite(SCA_RESET, HIGH);
	delayMicroseconds(100);
}

void printbin(int var) {
	for (unsigned int test = 0b10000000; test; test >>= 1) {
		Serial.write(var & test ? '1' : '0');
	}
	Serial.println();
}


