#import <Preferences/PSListController.h>

@interface CarrierNameChangerprefsListController: PSListController {
}
@end

@implementation CarrierNameChangerprefsListController
- (id)specifiers {
	if(_specifiers == nil) {
		_specifiers = [self loadSpecifiersFromPlistName:@"CarrierNameChangerprefs" target:self];
	}
	return _specifiers;
}

-(void)apply{
	[self.view endEditing:YES];
}
@end