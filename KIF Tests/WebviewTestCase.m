//
//  WebviewTestCase.m
//  KIF
//
//  Created by Brian King on 9/19/14.
//
//

#import <KIF/KIF.h>

@interface WebviewTestCase : KIFTestCase

@end

@implementation WebviewTestCase

- (void)setUp
{
    [super setUp];
    [tester tapViewWithAccessibilityLabel:@"Webview"];
}

- (void)tearDown
{
    [tester tapViewWithAccessibilityLabel:@"Test Suite" traits:UIAccessibilityTraitButton];
    [super tearDown];
}

- (void)testLotsOfLoading
{
    [tester tapViewWithAccessibilityLabel:@"Test Suite" traits:UIAccessibilityTraitButton];
    for (NSUInteger i = 0; i < 100; i++) {
        [tester tapViewWithAccessibilityLabel:@"Webview"];
        [tester tapViewWithAccessibilityLabel:@"Test Suite" traits:UIAccessibilityTraitButton];
    }
    [tester tapViewWithAccessibilityLabel:@"Webview"];
}

@end
