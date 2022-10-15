import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AllRaffles extends StatefulWidget {
  const AllRaffles({Key? key}) : super(key: key);

  @override
  State<AllRaffles> createState() => _AllRafflesState();
}

class _AllRafflesState extends State<AllRaffles> {
  late TextEditingController _searchTextController;

  @override
  void initState() {
    super.initState();
    _searchTextController = TextEditingController();

  }

  @override
  void dispose() {
    _searchTextController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff0E3255),
        toolbarHeight: 85.h,
        centerTitle: true,
        title: Text(
          'Raffles',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 22.h),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(11.0),
              bottomLeft: Radius.circular(11.0)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 23,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30.h,),


            SizedBox(
              width: double.infinity,

              child: Expanded(
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    reverse: true,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      return Align(
                        alignment: AlignmentDirectional.center,
                        child:   Container(
                          width: 343.w,
                          height: 100.h,
                          decoration: BoxDecoration(
                            color: Color(0xffF5F5FA),
                            borderRadius: BorderRadius.circular(6).r,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 300.w,
                                height: double.infinity,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(start: 10,end: 10,top: 12),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('KWD22.67',style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.h,
                                            color: Color(0xff0E3255),
                                          ),),

                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(start: 10,end: 10,top: 10),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [

                                          Container(
                                            alignment: AlignmentDirectional.center,
                                            width: 84.w,
                                            height: 30.h,
                                            decoration: BoxDecoration(
                                              color: Color(0xff3EB142),
                                              borderRadius: BorderRadius.circular(8).r,
                                            ),
                                            child: Text('Converted',style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.h,
                                              fontWeight: FontWeight.w400,
                                            ),),

                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(start: 10,end: 10,top: 5),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(' 11:16 PM',style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.h,
                                            color: Colors.grey,
                                          ),),
                                          SizedBox(width: 3.w,),
                                          Text(' 2022-09-26',style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.h,
                                            color: Colors.grey,
                                          ),),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: AlignmentDirectional.center,
                                width: 40.w,
                                height: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Align(
                                        alignment: AlignmentDirectional.center,
                                        child: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_forward_ios,color: Color(0xffF58A07),size: 25,)))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context,index){
                      return SizedBox(height: 14.h,);
                    }, itemCount: 50),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
