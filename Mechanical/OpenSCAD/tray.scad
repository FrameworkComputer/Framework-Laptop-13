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
mainboard_top_edge = 77.83;
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
// Adding a mount for the M.2 WiFi card
use_wifi = true;
wifi_boss = [138.65, -15.08, 1.49];

// The bosses for the fasteners
module boss() {
    $fn = 128;
    cylinder(h = tray_h+boss_h-1.2, r = 6/2);
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
        
        // M.2 WiFi card mounting for an M2 fastener
        if (use_wifi) {
            wifi_boss_r = 3.0;
            translate([mainboard[0]/2, wifi_boss[1]-wifi_boss_r, 0]) cube([wifi_boss[0]-mainboard[0]/2, wifi_boss_r*2, tray_h]);
            difference() {
                translate([wifi_boss[0], wifi_boss[1], 0]) cylinder(h = tray_h+boss_h+wifi_boss[2], r = wifi_boss_r);
                translate([wifi_boss[0], wifi_boss[1], tray_h+boss_h+wifi_boss[2]-3.0]) cylinder(h = 3.0, r = 2.0/2);
            }
            
            // SMA jack mounts
            translate([mainboard[0]/4+vesa_w/4-30/2, mainboard_top_edge, 0]) {
                sma_r = 6.35/2;
                sma_mount_w = 30;
                sma_mount_h = 20;
                sma_mount_t = tray_h;
                sma_mount_d = 5;
                cube([sma_mount_w, sma_mount_d, tray_h]);
                difference() {
                    translate([0, sma_mount_d, 0]) cube([sma_mount_w, sma_mount_t, sma_mount_h]);
                    translate([sma_r+sma_mount_t, sma_mount_d, sma_mount_h-sma_r-tray_h]) rotate([-90, 0, 0]) cylinder(h = sma_mount_t, r = sma_r+0.2);
                    translate([sma_mount_w-sma_r-sma_mount_t, sma_mount_d, sma_mount_h-sma_r-tray_h]) rotate([-90, 0, 0]) cylinder(h = sma_mount_t, r = sma_r+0.2);
                }
                
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
