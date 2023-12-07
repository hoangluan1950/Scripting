foreach_in_collection cell [get_cells -ph ] {
set demm 0
foreach ref [get_attribute $cell ref_name] {
for {set i 1} {i<57176} {
set a(0) " "
set a($i) $ref
if {$a($i)!=$a($i-1)} {incr demm}
}
puts "[$demm]"
}
}

