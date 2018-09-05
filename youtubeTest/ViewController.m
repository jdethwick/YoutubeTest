//
//  ViewController.m
//  youtubeTest
//
//  Created by jdethwick on 2/24/17.
//  Copyright © 2017 jdethwick. All rights reserved.
//

#import "ViewController.h"
#define DEFAULT_VIDEO_WIDTH 365.0
#define DEFAULT_VIDEO_HEIGHT 270.0


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *videoURL = @"https://www.youtube.com/watch?v=1eZCzOKyPgc";
    //https://www.youtube.com/watch?v=1eZCzOKyPgc
    //https://www.youtube.com/embed/T6yMJmSErRk
    //https://www.youtube.com/embed/CchqGSPNvns
    
    NSString* tempDetailString = [NSString stringWithFormat:@"<p align='center'> <iframe src='%@' width='%lf' height='%lf' frameborder='0' allowfullscreen></iframe> </p>", videoURL, DEFAULT_VIDEO_WIDTH, DEFAULT_VIDEO_HEIGHT];
    
    [_webView loadHTMLString:tempDetailString baseURL:nil];
    
}


@end
