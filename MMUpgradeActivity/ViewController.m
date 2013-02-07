//  Created by Michael MacCallum on 2/5/13.
//
//  This Software is provided on an "AS IS" basis. I MAKE NO WARRANTIES, EXPRESS OR IMPLIED, INCLUDING WITHOUT
//  LIMITATION THE IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE,
//  REGARDING THE SOFTWARE OR ITS USE AND OPERATION ALONE OR IN COMBINATION WITH YOUR PRODUCTS. IN NO EVENT
//  SHALL I BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
//  TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
//  ARISING IN ANY WAY OUT OF THE USE, REPRODUCTION, MODIFICATION AND/OR DISTRIBUTION OF THE SOFTWARE, HOWEVER
//  CAUSED AND WHETHER UNDER THEORY OF CONTRACT, TORT (INCLUDING NEGLIGENCE), STRICT LIABILITY OR OTHERWISE,
//  EVEN IF I HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//  That being said, you are free to use this code free of charge for absolutely anything you want. You may use this in personal projects, commercial projects or for anything else.
//
//  Accreditation is not required, but is always appreciated.


#import "ViewController.h"
#import "MMUpgradeActivity.h"
@interface ViewController ()
@end
@implementation ViewController



- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];


    MMUpgradeActivity *upgrader = [MMUpgradeActivity new];
    [upgrader setAppStoreAppID:538725002];
    [upgrader setTitleOfActivity:@"Go Pro!"];

//    [upgrader setIconOfActivity:[UIImage imageNamed:@"myOtherImage"]];


/// If you do not have your own image for this activity you can use the images included in this bundle.
/// These images will be used by default, but can use your own image by uncommenting the line above.



    NSString *string = @"Yay sharing!"; //Ignore

    UIActivityViewController *shareVC = [[UIActivityViewController alloc] initWithActivityItems:@[string] applicationActivities:@[upgrader]];
    [self presentViewController:shareVC animated:YES completion:nil];
}

@end
