

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "Receipt+CoreDataClass.h"
#import "DetailViewController.h"
#import "Tag+CoreDataClass.h"

@class AddReceiptViewController;

@interface ViewController : UIViewController <NSFetchedResultsControllerDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property AddReceiptViewController *detailViewController;

@property (strong, nonatomic) NSFetchedResultsController<Receipt *> *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@end

