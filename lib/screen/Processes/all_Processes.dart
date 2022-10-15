import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AllProcesses extends StatefulWidget {
  const AllProcesses({Key? key}) : super(key: key);

  @override
  State<AllProcesses> createState() => _AllProcessesState();
}

class _AllProcessesState extends State<AllProcesses> {
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
          'operations',
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
            SizedBox(height: 28.h,),
            Padding(

              padding: const EdgeInsetsDirectional.only(end: 16, start: 16),

              child:   TextField(

                keyboardType: TextInputType.name,


                controller: _searchTextController,



                onTap: () {},



                onChanged: (String value) {},



                cursorColor: Colors.black,



                cursorWidth: 1.3.w,



                cursorRadius: const Radius.circular(10).r,



                enabled: true,



                style: TextStyle(



                    fontWeight: FontWeight.w500,



                    fontSize: 16.sp,



                    color: Colors.black),



                decoration: InputDecoration(



                  prefixIcon: const Icon(



                    Icons.search,



                    color: Color(0xff0E3255),



                    size: 18,



                  ),



                  labelText: 'search',



                  labelStyle: TextStyle(



                      fontSize: 13.sp,



                      fontStyle: FontStyle.italic,



                      color: const Color(0xffb3baa6
                      ),



                      fontWeight: FontWeight.w400),



                  fillColor: const Color(0xffFAFAFA),



                  filled: true,



                  helperMaxLines: 2,



                  enabledBorder: OutlineInputBorder(



                    borderSide: BorderSide(



                        color: const Color(0xff0E3255), width: 1.w),



                    borderRadius: BorderRadius.circular(8).r,



                  ),



                  focusedBorder: OutlineInputBorder(



                    borderSide: BorderSide(



                        color: const Color(0xff0E3255), width: 1.5.w),



                    borderRadius: BorderRadius.circular(8),



                  ),



                  constraints: BoxConstraints(



                    maxHeight: 282.h,



                    minWidth: 48.w,),



                ),



              ),

            ),
            SizedBox(height: 24.h,),

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
                          height: 115.h,
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
                                          Text('4353678978',style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.h,
                                            color: Color(0xff0E3255),
                                          ),),
                                          Text('KWD22.67',style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14.h,
                                            color: Color(0xff0E3255),
                                          ),),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(start: 10,end: 10,top: 20),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Image.asset('images/image_visa.png'),
                                          Container(
                                            alignment: AlignmentDirectional.center,
                                            width: 63.w,
                                            height: 24.h,
                                            decoration: BoxDecoration(
                                              color: Color(0xff3EB142),
                                              borderRadius: BorderRadius.circular(8).r,
                                            ),
                                            child: Text('Success',style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14.h,
                                              fontWeight: FontWeight.w400,
                                            ),),

                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(start: 10,end: 10,top: 12),
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
