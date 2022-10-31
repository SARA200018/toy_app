class CommonQustionModel {
  CommonQustionModel(this.title, this.body, [this.isExpanded = false]);

  String title;
  String body;
  bool isExpanded;
}

List<CommonQustionModel> getCommonQustion() {
  return [
    CommonQustionModel('لماذا لا يمكنني إضافة هذا المستخدِم؟',
        '''
يرتبط المستخدِم من قبل بحساب نشِط أو غير مفعَّل في AdSense.المستخدِم هو اسم المستخدِم البديل لمعلومات موجودة لتسجيل الدخول إلى AdSense. يمكن أن تكون معلومات تسجيل الدخول هذه مرتبطة بحساب AdSense المعنيّ، أو بحساب آخر في AdSense أو أحد تطبيقاته.
لم يتمّ تفعيل AdSense في حساب G Suite للمستخدم. يمكنك التواصل مع مشرف G Suite لتفعيل AdSense.        '''),
    CommonQustionModel('لماذا لا يمكنني إضافة هذا المستخدِم؟',
        '''
يرتبط المستخدِم من قبل بحساب نشِط أو غير مفعَّل في AdSense.المستخدِم هو اسم المستخدِم البديل لمعلومات موجودة لتسجيل الدخول إلى AdSense. يمكن أن تكون معلومات تسجيل الدخول هذه مرتبطة بحساب AdSense المعنيّ، أو بحساب آخر في AdSense أو أحد تطبيقاته.
لم يتمّ تفعيل AdSense في حساب G Suite للمستخدم. يمكنك التواصل مع مشرف G Suite لتفعيل AdSense.        '''),
    CommonQustionModel('لماذا لا يمكنني إضافة هذا المستخدِم؟',
        '''
يرتبط المستخدِم من قبل بحساب نشِط أو غير مفعَّل في AdSense.المستخدِم هو اسم المستخدِم البديل لمعلومات موجودة لتسجيل الدخول إلى AdSense. يمكن أن تكون معلومات تسجيل الدخول هذه مرتبطة بحساب AdSense المعنيّ، أو بحساب آخر في AdSense أو أحد تطبيقاته.
لم يتمّ تفعيل AdSense في حساب G Suite للمستخدم. يمكنك التواصل مع مشرف G Suite لتفعيل AdSense.        '''),
  ];
}
