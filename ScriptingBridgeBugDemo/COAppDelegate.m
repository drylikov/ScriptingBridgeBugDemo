
//
//  COAppDelegate.m
//  ScriptingBridgeBugDemo
//
//

#import "COAppDelegate.h"
#import "OmniGrafflePro.h"

@implementation COAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
  OmniGraffleProApplication *graffle = [SBApplication applicationWithBundleIdentifier:@"com.omnigroup.omnigrafflepro"];
  OmniGraffleProDocument *doc = [[[graffle classForScriptingClass:@"document"] alloc] init];
  [graffle.documents addObject:doc];
  OmniGraffleProCanvas *canvas = doc.canvases[0];

  OmniGraffleProShape *shape = [[[graffle classForScriptingClass:@"shape"] alloc] init];
  [canvas.shapes addObject:shape];
  /*
    BUG!
   
    At this point, *shape is a OmniGraffleProfessional5Graphic, where it should be a OmniGraffleProfessional5Shape.
    Because of this, we can't assign any shape-like properties to *shape. Sadness.
  */
  NSLog(@"%@", shape);

  // However, going back to canvas.shapes and getting the object returns an instance of the correct class...
  NSLog(@"%@", [canvas.shapes lastObject]);
}

@end
