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
// The height of the boss, should be at least 1.0 in order to clear the mainboard bottom-side keepout
boss_h = 5;
// Whether or not to use threaded inserts for the fasteners
use_insert = false;
// VESA mount spacing
vesa_w = 75;

// The bosses for the fasteners
module boss() {
    $fn = 128;
    cylinder(h = tray_h+boss_h-1, r = 6/2);
    cylinder(h = tray_h+boss_h, r = 4.4/2-0.1);
}

difference() {
    union() {
        // The main body of the tray
        translate([0, mainboard[1]/2-27, tray_h/2]) {
            difference() {
                roundedBox([mainboard[0], mainboard[1], tray_h], tray_w/2, true);
                
                // Cutouts
                roundedBox([vesa_w-tray_w*2, mainboard[1]-tray_w*2, tray_h+1], tray_w/4, true);
                translate([-mainboard[0]/4-vesa_w/4, 0, 0]) roundedBox([vesa_w-tray_w*2, mainboard[1]-tray_w*2, tray_h+1], tray_w/4, true);
                translate([mainboard[0]/4+vesa_w/4, 0, 0]) roundedBox([vesa_w-tray_w*2, mainboard[1]-tray_w*2, tray_h+1], tray_w/4, true);
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
        for (b = bosses) translate(b) cylinder(h = tray_h+boss_h, r = 3.5/2);
    } else {
        for (b = bosses) translate(b) cylinder(h = tray_h+boss_h, r = 1.5/2);
    }
    
    // VESA holes
    for (x = [-vesa_w/2, vesa_w/2]) {
        for (y = [-vesa_w/2+25, vesa_w/2+25]) {
            translate([x, y, -0.1]) cylinder(h = tray_h+0.2, r = 2.0 + 0.2);
        }
    }
}
