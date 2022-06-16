import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_wechat_demo/constant/style.dart';

// 消息处理

class MessageData {
  String avatar; //头像
  String title; // 标题
  String subTitle; //描述
  DateTime time; //时间
  MessageType type; //类型

  MessageData(this.avatar, this.title, this.subTitle, this.time, this.type);
}

enum MessageType { SYSTEM, PUBLIC, CHAT, GROUP }

List<MessageData> messageData = [
       new MessageData(
           "https://www.google.com/search?q=%E5%A4%B4%E5%83%8F%E5%9B%BE%E7%89%87&sxsrf=ALiCzsabbwzGwHUCt2cJDu420Grxyjf8ww:1655139870806&tbm=isch&source=iu&ictx=1&vet=1&fir=cGY0OgAWG99elM%252CLuE2wyLYWcViPM%252C_%253BC0EvbTASY-B23M%252CLuE2wyLYWcViPM%252C_%253Btd0U8NYkoFvWUM%252CHlva8eTzsLuR4M%252C_%253BE888f7c1VVnM3M%252Cdz1_2FmrUQYBSM%252C_%253BtZlRwAAEh8pilM%252CNkBcJ8qRPpmfbM%252C_%253BOHtAATNlXogUlM%252CypF_TLbZyuzI6M%252C_%253BCBC3aPJr7hSiBM%252CAom7Dmh32coJOM%252C_%253B95XfeFxWFW1g1M%252CneQAe74knC6-lM%252C_%253BbZo-2RaoXOgYAM%252Cg40OYaB_iiimuM%252C_%253Bc_PsPz6PusoaiM%252C-vs6S8mqH-sX8M%252C_%253B2U-ZDoIKKz3odM%252CoEn5YsALZcj96M%252C_%253BMlx-qVYkN8ssGM%252ConEG_nEM5SwxrM%252C_%253BJMzqL71unzLtvM%252CLuE2wyLYWcViPM%252C_%253BQIUcZW8NLBAe_M%252CjF8pO4VowHTheM%252C_%253B8zIcIZogaJMcoM%252CRm_UBXWyFnXwrM%252C_%253BQ3czTxhhSVogAM%252CjF8pO4VowHTheM%252C_&usg=AI4_-kSe2vTVsP0q31HdNnRwop3L1Hl30A&sa=X&ved=2ahUKEwiO67XA9Kr4AhXFKkQIHRKNCpAQ9QF6BAgMEAE#imgrc=C0EvbTASY-B23M",
           "打耳朵秃秃",
           "一休哥",
           new DateTime.now(),
           MessageType.CHAT
        ),

         new MessageData(
           "https://www.google.com/search?q=%E5%A4%B4%E5%83%8F%E5%9B%BE%E7%89%87&sxsrf=ALiCzsabbwzGwHUCt2cJDu420Grxyjf8ww:1655139870806&tbm=isch&source=iu&ictx=1&vet=1&fir=cGY0OgAWG99elM%252CLuE2wyLYWcViPM%252C_%253BC0EvbTASY-B23M%252CLuE2wyLYWcViPM%252C_%253Btd0U8NYkoFvWUM%252CHlva8eTzsLuR4M%252C_%253BE888f7c1VVnM3M%252Cdz1_2FmrUQYBSM%252C_%253BtZlRwAAEh8pilM%252CNkBcJ8qRPpmfbM%252C_%253BOHtAATNlXogUlM%252CypF_TLbZyuzI6M%252C_%253BCBC3aPJr7hSiBM%252CAom7Dmh32coJOM%252C_%253B95XfeFxWFW1g1M%252CneQAe74knC6-lM%252C_%253BbZo-2RaoXOgYAM%252Cg40OYaB_iiimuM%252C_%253Bc_PsPz6PusoaiM%252C-vs6S8mqH-sX8M%252C_%253B2U-ZDoIKKz3odM%252CoEn5YsALZcj96M%252C_%253BMlx-qVYkN8ssGM%252ConEG_nEM5SwxrM%252C_%253BJMzqL71unzLtvM%252CLuE2wyLYWcViPM%252C_%253BQIUcZW8NLBAe_M%252CjF8pO4VowHTheM%252C_%253B8zIcIZogaJMcoM%252CRm_UBXWyFnXwrM%252C_%253BQ3czTxhhSVogAM%252CjF8pO4VowHTheM%252C_&usg=AI4_-kSe2vTVsP0q31HdNnRwop3L1Hl30A&sa=X&ved=2ahUKEwiO67XA9Kr4AhXFKkQIHRKNCpAQ9QF6BAgMEAE#imgrc=C0EvbTASY-B23M",
           "打耳朵秃秃",
           "一休哥",
           new DateTime.now(),
           MessageType.CHAT
        ),
         new MessageData(
           "https://www.google.com/search?q=%E5%A4%B4%E5%83%8F%E5%9B%BE%E7%89%87&sxsrf=ALiCzsabbwzGwHUCt2cJDu420Grxyjf8ww:1655139870806&tbm=isch&source=iu&ictx=1&vet=1&fir=cGY0OgAWG99elM%252CLuE2wyLYWcViPM%252C_%253BC0EvbTASY-B23M%252CLuE2wyLYWcViPM%252C_%253Btd0U8NYkoFvWUM%252CHlva8eTzsLuR4M%252C_%253BE888f7c1VVnM3M%252Cdz1_2FmrUQYBSM%252C_%253BtZlRwAAEh8pilM%252CNkBcJ8qRPpmfbM%252C_%253BOHtAATNlXogUlM%252CypF_TLbZyuzI6M%252C_%253BCBC3aPJr7hSiBM%252CAom7Dmh32coJOM%252C_%253B95XfeFxWFW1g1M%252CneQAe74knC6-lM%252C_%253BbZo-2RaoXOgYAM%252Cg40OYaB_iiimuM%252C_%253Bc_PsPz6PusoaiM%252C-vs6S8mqH-sX8M%252C_%253B2U-ZDoIKKz3odM%252CoEn5YsALZcj96M%252C_%253BMlx-qVYkN8ssGM%252ConEG_nEM5SwxrM%252C_%253BJMzqL71unzLtvM%252CLuE2wyLYWcViPM%252C_%253BQIUcZW8NLBAe_M%252CjF8pO4VowHTheM%252C_%253B8zIcIZogaJMcoM%252CRm_UBXWyFnXwrM%252C_%253BQ3czTxhhSVogAM%252CjF8pO4VowHTheM%252C_&usg=AI4_-kSe2vTVsP0q31HdNnRwop3L1Hl30A&sa=X&ved=2ahUKEwiO67XA9Kr4AhXFKkQIHRKNCpAQ9QF6BAgMEAE#imgrc=C0EvbTASY-B23M",
           "打耳朵秃秃",
           "一休哥",
           new DateTime.now(),
           MessageType.CHAT
        ),
         new MessageData(
           "https://www.google.com/search?q=%E5%A4%B4%E5%83%8F%E5%9B%BE%E7%89%87&sxsrf=ALiCzsabbwzGwHUCt2cJDu420Grxyjf8ww:1655139870806&tbm=isch&source=iu&ictx=1&vet=1&fir=cGY0OgAWG99elM%252CLuE2wyLYWcViPM%252C_%253BC0EvbTASY-B23M%252CLuE2wyLYWcViPM%252C_%253Btd0U8NYkoFvWUM%252CHlva8eTzsLuR4M%252C_%253BE888f7c1VVnM3M%252Cdz1_2FmrUQYBSM%252C_%253BtZlRwAAEh8pilM%252CNkBcJ8qRPpmfbM%252C_%253BOHtAATNlXogUlM%252CypF_TLbZyuzI6M%252C_%253BCBC3aPJr7hSiBM%252CAom7Dmh32coJOM%252C_%253B95XfeFxWFW1g1M%252CneQAe74knC6-lM%252C_%253BbZo-2RaoXOgYAM%252Cg40OYaB_iiimuM%252C_%253Bc_PsPz6PusoaiM%252C-vs6S8mqH-sX8M%252C_%253B2U-ZDoIKKz3odM%252CoEn5YsALZcj96M%252C_%253BMlx-qVYkN8ssGM%252ConEG_nEM5SwxrM%252C_%253BJMzqL71unzLtvM%252CLuE2wyLYWcViPM%252C_%253BQIUcZW8NLBAe_M%252CjF8pO4VowHTheM%252C_%253B8zIcIZogaJMcoM%252CRm_UBXWyFnXwrM%252C_%253BQ3czTxhhSVogAM%252CjF8pO4VowHTheM%252C_&usg=AI4_-kSe2vTVsP0q31HdNnRwop3L1Hl30A&sa=X&ved=2ahUKEwiO67XA9Kr4AhXFKkQIHRKNCpAQ9QF6BAgMEAE#imgrc=C0EvbTASY-B23M",
           "打耳朵秃秃",
           "一休哥",
           new DateTime.now(),
           MessageType.CHAT
        ),
         new MessageData(
           "https://www.google.com/search?q=%E5%A4%B4%E5%83%8F%E5%9B%BE%E7%89%87&sxsrf=ALiCzsabbwzGwHUCt2cJDu420Grxyjf8ww:1655139870806&tbm=isch&source=iu&ictx=1&vet=1&fir=cGY0OgAWG99elM%252CLuE2wyLYWcViPM%252C_%253BC0EvbTASY-B23M%252CLuE2wyLYWcViPM%252C_%253Btd0U8NYkoFvWUM%252CHlva8eTzsLuR4M%252C_%253BE888f7c1VVnM3M%252Cdz1_2FmrUQYBSM%252C_%253BtZlRwAAEh8pilM%252CNkBcJ8qRPpmfbM%252C_%253BOHtAATNlXogUlM%252CypF_TLbZyuzI6M%252C_%253BCBC3aPJr7hSiBM%252CAom7Dmh32coJOM%252C_%253B95XfeFxWFW1g1M%252CneQAe74knC6-lM%252C_%253BbZo-2RaoXOgYAM%252Cg40OYaB_iiimuM%252C_%253Bc_PsPz6PusoaiM%252C-vs6S8mqH-sX8M%252C_%253B2U-ZDoIKKz3odM%252CoEn5YsALZcj96M%252C_%253BMlx-qVYkN8ssGM%252ConEG_nEM5SwxrM%252C_%253BJMzqL71unzLtvM%252CLuE2wyLYWcViPM%252C_%253BQIUcZW8NLBAe_M%252CjF8pO4VowHTheM%252C_%253B8zIcIZogaJMcoM%252CRm_UBXWyFnXwrM%252C_%253BQ3czTxhhSVogAM%252CjF8pO4VowHTheM%252C_&usg=AI4_-kSe2vTVsP0q31HdNnRwop3L1Hl30A&sa=X&ved=2ahUKEwiO67XA9Kr4AhXFKkQIHRKNCpAQ9QF6BAgMEAE#imgrc=C0EvbTASY-B23M",
           "打耳朵秃秃",
           "一休哥",
           new DateTime.now(),
           MessageType.CHAT
        ),
  ];
