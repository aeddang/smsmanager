.class public Lcom/allabyu/sms_manager/MySQLiteOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MySQLiteOpenHelper.java"


# instance fields
.field sql:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/allabyu/sms_manager/MySQLiteOpenHelper;->sql:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 22
    const-string v0, "CREATE TABLE IF NOT EXISTS test_table (id integer primary key, data text, data_num integer)"

    iput-object v0, p0, Lcom/allabyu/sms_manager/MySQLiteOpenHelper;->sql:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/allabyu/sms_manager/MySQLiteOpenHelper;->sql:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/allabyu/sms_manager/MySQLiteOpenHelper;->sql:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/allabyu/sms_manager/MySQLiteOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 32
    return-void
.end method
