//
//  main.m
//  Foundation -(NSMutableArray)
//
//  Created by qingyun on 16/4/5.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSArray *arr1=[[NSArray alloc] initWithObjects:@"one",@"two", nil];
        NSLog(@"==>%@",[arr1 objectAtIndex:1]);
        //快捷方式
        NSArray *arr2=@[@"qingyun",@"hello"];//@[]不可变数组的快捷方式
        NSLog(@"fast==>%@",arr2[1]);
//        arr1[0]=@"ios";//因为数组不可变，所以值不可更改！
        // 可遍数组 NSMutableArray
        //1.类方法
        NSMutableArray *mulArr1=[NSMutableArray arrayWithCapacity:10];//capacity仅仅只是一个最优值，预分配
//        NSMutableArray *mularr2=@[@"wscas",@"csa"];//=左右类型不一致！
        //追加 一个元素
        [mulArr1 addObject:@"objective-c"];
        NSLog(@"mularr1==>%@",mulArr1);
        //追加多个元素
        [mulArr1 addObjectsFromArray:arr1];
        NSLog(@"mulArr1==%@",mulArr1);
        //插入（在指定的位置插入元素）
        [mulArr1 insertObject:@"xcode" atIndex:3];
        NSLog(@"mulArr=%@",mulArr1);
        //求数组元素个数
        NSLog(@">>>>%ld",mulArr1.count);
        //批量插入
        [mulArr1 insertObjects:@[@"for",@"if",@"else",@"while"] atIndexes:[NSIndexSet indexSetWithIndexesInRange:NSMakeRange(1, 4)]];//起始位置指的是数组的插入的位置,要注意的有几个元素，必须全部插入
        NSLog(@"mulArr1==>%@",mulArr1);
        //替换 指定位置的元素
        [mulArr1 replaceObjectAtIndex:mulArr1.count-1 withObject:@"three"];
        NSLog(@"++=>%@",mulArr1);
        //批量替换
        [mulArr1 replaceObjectsInRange:NSMakeRange(1, 3) withObjectsFromArray:@[@"if",@"else",@"for",@"do-while"]];
        NSLog(@"mulArr==>%@",mulArr1);
        //删除 元素(有则删除)
        [mulArr1 removeObject:@"hello"];
        NSLog(@"%@",mulArr1);
        //按照下标删除
        [mulArr1 removeObjectAtIndex:1];
        NSLog(@"%@",mulArr1);
        //删除最后元素
        [mulArr1 removeLastObject];
        NSLog(@"%@",mulArr1);
        //在指定范围删除(找到才删除)
        [mulArr1 removeObject:@"one" inRange:NSMakeRange(0, 3)];
        NSLog(@"mulArr1==%@",mulArr1);
    }
    return 0;
}
