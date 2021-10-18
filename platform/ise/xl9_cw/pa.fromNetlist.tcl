
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name xl9_cw -dir "/home/kaveh/projects/scadobf/ise/xl9_cw/planAhead_run_4" -part xc6slx9tqg144-2
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/kaveh/projects/scadobf/ise/xl9_cw/sca_unlock_top.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/kaveh/projects/scadobf/ise/xl9_cw} }
set_property target_constrs_file "CW308T_S6LX9_Example.ucf" [current_fileset -constrset]
add_files [list {CW308T_S6LX9_Example.ucf}] -fileset [get_property constrset [current_run]]
link_design
