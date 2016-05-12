#import <UIKit/UIKit.h>
#import "CaptainHook.h"

CHDeclareClass(StorePackCell);
CHDeclareClass(PurchaseManager);
CHDeclareClass(CampaignItemInfo);
CHDeclareClass(PrivilegesMusicInfo);

CHMethod(0, BOOL, StorePackCell, isPurchased) {
    NSLog(@"StorePackCell");
    CHSuper(0, StorePackCell, isPurchased);
    return YES;
}

CHMethod(1, BOOL, PurchaseManager, isPurchased, id, arg1) {
    NSLog(@"PurchaseManager");
    CHSuper(1, PurchaseManager, isPurchased, arg1);
    return YES;
}

CHMethod(2, BOOL, CampaignItemInfo, checkExistPackList, id, arg1, packID, int, arg2) {
    NSLog(@"CampaignItemInfo");
    CHSuper(2, CampaignItemInfo, checkExistPackList, arg1, packID, arg2);
    return YES;
}

CHMethod(2, BOOL, PrivilegesMusicInfo, checkExistPackList, id, arg1, packID, int, arg2) {
    NSLog(@"PrivilegesMusicInfo");
    CHSuper(2, PrivilegesMusicInfo, checkExistPackList, arg1, packID, arg2);
    return YES;
}

CHConstructor {
    CHLoadLateClass(StorePackCell);
    CHHook(0, StorePackCell, isPurchased);
    CHLoadLateClass(PurchaseManager);
    CHHook(1, PurchaseManager, isPurchased);
    CHLoadLateClass(CampaignItemInfo);
    CHHook(2, CampaignItemInfo, checkExistPackList, packID);
    CHLoadLateClass(PrivilegesMusicInfo);
    CHHook(2, PrivilegesMusicInfo, checkExistPackList, packID);
}