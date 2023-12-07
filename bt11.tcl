### tao mang A(i) chua ten cell da xoa "/"
set i 0  ; unset l
foreach name [get_object_name [get_cells -p *]] {
set n [regsub -all "/" $name " "]
set A($i) $n
set i [expr $i +1]
} 
###
set B(0) " "
set j 1
       for {set k 0} {$k<$i} {incr k} { set l [expr [llength $A($k)]-1] 
       for {set m 0} {$m<$l} {incr m} {
set B($j) [lindex $A($k) $m] 
if { $B($j) != $B([expr ($j-1)]) } { 
	echo "$B($j)" ; incr j }
} 
}
	       
