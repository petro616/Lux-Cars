import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          margin: EdgeInsets.only(bottom: 5.h),
          child: Text(
            "سياسة الخصوصية",
            style: TextStyle(
              fontSize: 18.w,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey[800],
            ),
          ),
        ),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(100.r)),
        toolbarHeight: 45.h,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blueGrey[800]),
        elevation: 20,
        shadowColor: Colors.blue[300],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0.w),
        child: SingleChildScrollView(
          child: Text(
            '''
نحن نحترم خصوصيتك ونلتزم بحماية بياناتك الشخصية...

من خلال استخدامك لتطبيقنا، فإنك توافق على الشروط التالية:

1. المعلومات التي نقوم بجمعها : 
- نقوم بجمع بعض البيانات الأساسية مثل الاسم، رقم الهاتف، أو المدينة بهدف تحسين تجربة المستخدم فقط.
- لا نقوم بمشاركة أي معلومات شخصية مع أي طرف ثالث.

2. استخدام البيانات :
- نستخدم البيانات لتقديم الخدمات، وتحسين جودة التطبيق، والتواصل مع المستخدم عند الحاجة.

3. حماية البيانات :
- يتم حفظ بياناتك بأمان، ونتخذ جميع التدابير التقنية المناسبة لحمايتها.

4. جهات الاتصال الخارجية:
- يمكن أن يحتوي التطبيق على روابط خارجية مثل التواصل عبر واتساب، ولكن لا نتحمل مسؤولية سياسات الخصوصية الخاصة بهذه الروابط.

5. الموافقة على السياسة :
- بمجرد استخدامك للتطبيق فإنك توافق على سياسة الخصوصية هذه، وقد يتم تعديلها لاحقاً، وسيتم إشعارك بالتغييرات.

إذا كان لديك أي استفسار، يمكنك التواصل معنا مباشرة عبر واتساب من داخل التطبيق.
            ''',
            textDirection: TextDirection.rtl,
            style: TextStyle(
                color: Colors.blueGrey[800],
                fontSize: 16.sp,
                height: 1.6,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
