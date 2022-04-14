#============================================================================#
# This script prints the HyperMesh color palette to a tab-delimited file.    #
# This allows you to get the RGB code or Hexadecimal code for the colors     #
# used in HM for whatever purposes you may wish.                             #
#                                                                            #
# Filename: hm_colors_to_file.tcl                                            #
#                                                                            #
# Created by als0052                                                         #
# Created on 03-03-2022                                                      #
# Updated on 03-03-2022                                                      #
#============================================================================#
package require Tcl;


proc print_color_palette {} {
	# ====================================================================== #
	# Prints the color palette to a file                                     #
	#                                                                        #
	# The output file is a tab-delimited file. The first column is the       #
	# HyperMesh color ID number. Second through fourth column are the R, G,  #
	# and B values on a 0-255 scale. Last column is the color in             #
	# hexadecimal.                                                           #
	#                                                                        #
	# ``entitycolors ?index?`` - If an index 1 through 64 is specified,      #
	# returns a list of 3 RGB values for that color. If no index is          #
	# specified, returns a list of RGB triplets for all colors.              #
	# ====================================================================== #
	set fn "$::env(HOME)\\Downloads\\hypermesh_color_palette.txt";
	
	# Get all the colors formatted in a list
	set hex_color_list "";  # hexadecimal 
	set rgb_color_list "";  # rgb
	foreach color [hm_winfo entitycolors] {
		set hex_color [eval format #%02x%02x%02x $color];
		lappend hex_color_list $hex_color;
		lappend rgb_color_list $color;
	}
	
	# Write the list to a tab separated file
	set fhOut [open $fn w];
	puts $fhOut "Color ID\tR\tG\tB\tHex";
	for {set i 0} {$i < 64} {incr i} {
		set color_id [expr {$i + 1}];
		set rgb_line [lindex $rgb_color_list $i];
		set hex_line [lindex $hex_color_list $i];
		set r [lindex $rgb_line 0];
		set g [lindex $rgb_line 1];
		set b [lindex $rgb_line 2];
		puts $fhOut "$color_id\t$r\t$g\t$b\t$hex_line";
	}
	close $fhOut;
}


## --------------------- #
##       Main Code       #
## --------------------- #
print_color_palette;
