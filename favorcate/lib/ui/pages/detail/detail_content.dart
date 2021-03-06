import 'package:flutter/material.dart';
import 'package:favorcate/core/model/meal_model.dart';
import 'package:favorcate/core/extension/int_extension.dart';

class ZMJDetailContent extends StatelessWidget {

  final ZMJMealModel _meal;
  ZMJDetailContent(this._meal);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          buildBannerImage(),
          buildMakeTitle(context, _meal.title),
          buildMakeMaterial(context),
          buildMakeSteps(context)
        ],
      ),
    );
  }


  //1、横幅图片
  Widget buildBannerImage(){

    //设置一些样式属性，需要包裹外层的东西
    return Container(
        width: double.infinity,
        child: Image.network(_meal.imageUrl)
    );

  }

  //2、制作材料
  Widget buildMakeMaterial(BuildContext context){

    return buildMakeContent(
      context: context,
      child: ListView.builder(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: _meal.ingredients.length,
          itemBuilder: (ctx, index){
            return Card(
              color: Theme.of(context).accentColor,
              child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Text(_meal.ingredients[index])
              ),
            );
          }
      )
    );

  }

  //3、制作的步骤
  Widget buildMakeSteps(BuildContext context){

    return  buildMakeContent(
      context: context,
      child: ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemBuilder: (ctx, index){
            return ListTile(
              leading: CircleAvatar(
                child: Text("#${index+1}"),
              ),
              title: Text(_meal.steps[index]),
            );
          },
          separatorBuilder: (ctx, index){
            return Divider();
          },
          itemCount: _meal.steps.length
      )
    );

  }


  //公共方法
  Widget buildMakeTitle(BuildContext context, String title){

    return Container(
        padding: EdgeInsets.symmetric(vertical: 10.px),
        child:  Text(title,style: Theme.of(context).textTheme.headline3.copyWith(fontWeight: FontWeight.bold))
    );

  }


  Widget buildMakeContent({BuildContext context, Widget child}){

    return Container(
      padding: EdgeInsets.all(8.px),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.green),
        borderRadius: BorderRadius.circular(8.px)
      ),
      width: MediaQuery.of(context).size.width - 30.px,
      child: child,
    );

  }



}






