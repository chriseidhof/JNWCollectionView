//
// Created by chris on 18.11.13.
//

#import "NSDictionary+NewCategory.h"


@implementation NSDictionary (NewCategory)


- (NSDictionary*)dictionaryByMappingKeys:(id (^)(id))block
{
    NSMutableDictionary* result = [NSMutableDictionary dictionary];
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL* stop)
    {
        NSLog(@"%@ -> %@", key, block(key));
        result[block(key)] = obj;
    }];
    return result;
}
@end
