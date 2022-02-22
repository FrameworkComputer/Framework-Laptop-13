// Mainboard Tray
//  An extremely basic tray for holding the Mainboard in the Framework Laptop
//
//  See https://frame.work for more information about Framework products and
//  https://github.com/FrameworkComputer/Mainboard for more about the Mainboard.
//
// Mainboard Tray © 2022 Framework Computer Inc
// is licensed under Attribution 4.0 International. 
// To view a copy of this license, visit http://creativecommons.org/licenses/by/4.0/

include <MCAD/boxes.scad>

$fn=128;

mainboard = [113.45+113.45, 27+77.83];
// Locations of the five fastener holes
bosses = [[(26.2+30.8)/2, -27+4.6/2, 0],
          [-111.15, 67.05, 0],
          [-111.15, 3.05, 0],
          [110.5, 71.85, 0],
          [111.0, 4.15, 0]];
          
// Width of the tray base parts
tray_w = 10;
// Thickness of the tray base
tray_h = 3;
// Whether or not to use threaded inserts for the fasteners
use_insert = false;

// The bosses for the fasteners
module boss() {
    $fn = 128;
    cylinder(h = tray_h+1, r = 6/2);
    cylinder(h = tray_h+2, r = 4.4/2-0.1);
}

difference() {
    union() {
        // The main body of the tray
        translate([0, mainboard[1]/2-27, tray_h/2]) {
            difference() {
                roundedBox([mainboard[0], mainboard[1], tray_h], tray_w/2, true);
                translate([-mainboard[0]/4+tray_w/4, 0, 0]) roundedBox([mainboard[0]/2-tray_w*1.5, mainboard[1]-tray_w*2, tray_h+1], tray_w/4, true);
                translate([mainboard[0]/4-tray_w/4, 0, 0]) roundedBox([mainboard[0]/2-tray_w*1.5, mainboard[1]-tray_w*2, tray_h+1], tray_w/4, true);
            }
        }

        // The bosses
        intersection() {
            // Cut off to fit within the tray bounds
            translate([0, mainboard[1]/2-27, (tray_h+10)/2]) roundedBox([mainboard[0], mainboard[1], tray_h+10], tray_w/2, true);
            union() {
                for (b = bosses) translate(b) boss();
            }
        }
    }
    
    // The holes in the bosses
    if (use_insert) {
        for (b = bosses) translate(b) cylinder(h = tray_h+2, r = 3.5/2);
    } else {
        for (b = bosses) translate(b) cylinder(h = tray_h+2, r = 1.5/2);
    }
}
