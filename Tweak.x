static NSString *settingsPath = @"/var/mobile/Library/Preferences/com.v1s10n4.CarrierNameChangerprefs.plist";

%hook _UIStatusBarStringView

- (void)setText:(NSString *)text {
	NSLog(@"origin => %@", text);
	if(![text containsString:@":"] && ![text containsString:@"%"] && [text rangeOfCharacterFromSet:[NSCharacterSet decimalDigitCharacterSet]].location == NSNotFound) {
		NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:settingsPath];
		NSString *prefstext = [[prefs objectForKey:@"text"] stringValue];
		NSLog(@"custom => %@", prefstext);
		if (!prefstext)
			prefstext = @"Loading..";
		%orig(prefstext);
	}
	else {
		%orig(text);
	}
}

%end