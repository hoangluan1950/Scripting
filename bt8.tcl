unset leng
set max(1) 0.0 ; set max(2) 0.0 ; set max(3) 0.0 ; set max(4) 0.0 ; set max(5) 0.0
for {set i 1} {$i <6} {incr i} { 
foreach_ port [get_ports -f "port_type ==signal"] {
set net [get_nets -p -o $port]
set leng [get_att  $net vr_length]
if {($leng>$max($i)) && ($leng!=$max(1)) &&  ($leng!=$max(2)) && ($leng!=$max(3)) && ($leng!=$max(4)) && ($leng!=$max(5)) } {
set max($i) $leng 
set pname [get_object_name $port] 
set nname [get_object_name $net]}
}
echo "$pname $nname $max($i)" 
}

