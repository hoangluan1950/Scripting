foreach_  net  [get_nets -p -o  [get_cells -p *]] {
set net_name [get_object_name $net]
set cell [get_object_name [get_cells -p -o [get_nets -p $net]]]
set size [sizeof $net]
for {set i 0} {$i<$size} {incr i} {
set net_array($i) [lindex $net_name $i]
set leng($i) [get_att [get_nets -p $net_array($i)] vr_length]
if {$leng($i) > 20.0} {echo "$cell $leng($i)" }
}
 }
