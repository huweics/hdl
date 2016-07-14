


source ../../scripts/adi_env.tcl
source $ad_hdl_dir/projects/scripts/adi_project.tcl
source $ad_hdl_dir/projects/scripts/adi_board.tcl

adi_project_create ccfmc_pzsdr
adi_project_files ccfmc_pzsdr [list \
  "system_top.v" \
  "system_constr.xdc"\
  "$ad_hdl_dir/library/common/ad_iobuf.v" \
  "$ad_hdl_dir/projects/common/pzsdr/pzsdr_system_constr.xdc" \
  "$ad_hdl_dir/projects/common/pzsdr/pzsdr_bd_system_constr.xdc" \
  "$ad_hdl_dir/projects/common/pzsdr/pzsdr_lvds_system_constr.xdc" ]

set_property PROCESSING_ORDER EARLY [get_files $ad_hdl_dir/projects/common/pzsdr/pzsdr_system_constr.xdc]
set_property PROCESSING_ORDER EARLY [get_files system_constr.xdc]

adi_project_run ccfmc_pzsdr


