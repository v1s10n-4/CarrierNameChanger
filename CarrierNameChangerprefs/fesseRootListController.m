#include "fesseRootListController.h"

@implementation fesseRootListController
- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}
	return _specifiers;
}

-(void)apply{
	[self.view endEditing:YES];
}
@end
