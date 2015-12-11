//
//  TKRR.h
//  Talket
//
//  Created by zhangheliang on 15/5/26.
//  Copyright (c) 2015年 truetel.com. All rights reserved.
//

#import <Realm/Realm.h>

@interface TKRR : RLMObject
<# Add properties here to define the model #>
@end

// This protocol enables typed collections. i.e.:
// RLMArray<TKRR>
RLM_ARRAY_TYPE(TKRR)
