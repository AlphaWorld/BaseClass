# BaseClass

简单换肤功能</br>
 ```Object-c
 //继承ZYBaseController 然后添加
  self.view.setBackgroundColor(VIEWDAYCOLOR,VIEWNIGHTCOLOR);
  //导航栏颜色
  navigation.navigationBar.setBackgroundColor(VIEWDAYCOLOR,VIEWNIGHTCOLOR);
  //暂时只有view的颜色变化,待添加
```

Cell适配器功能

```Object-c
//继承ZYBaseCell 实现这4个方法
- (void)loadContent{

}

- (void)setupCell{
self.selectionStyle = UITableViewCellSelectionStyleNone;
}

- (void)buildSubview{


}
```
```
//在Controlller中注册cell,添加数据时,使用适配器ZYCellDataAdapter ,data为id类型,为数据源
    ZYCellDataAdapter *dataAdaper = [ZYCellDataAdapter cellDataAdapterWithCellReuseIdentifier:@"ZYDayCell" data:@"白色" cellHeight:50 cellType:0];

//然后在返回cell的方法里
ZYCellDataAdapter *dataAdaper = self.dataArray[indexPath.row];
ZYBaseCell *cell = [tableView dequeueReusableCellWithIdentifier:dataAdaper.cellReuseIdentifier forIndexPath:indexPath];
cell.dataAdapter = dataAdaper;
[cell loadContent];
return cell;
```
```
//cell 的点击事件
   ZYBaseCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    [cell selectCell];
```



