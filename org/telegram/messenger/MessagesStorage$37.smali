.class Lorg/telegram/messenger/MessagesStorage$37;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->putContacts(Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$contactsCopy:Ljava/util/ArrayList;

.field final synthetic val$deleteAll:Z


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;ZLjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$37;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput-boolean p2, p0, Lorg/telegram/messenger/MessagesStorage$37;->val$deleteAll:Z

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$37;->val$contactsCopy:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v5, 0x1

    :try_start_0
    iget-boolean v4, p0, Lorg/telegram/messenger/MessagesStorage$37;->val$deleteAll:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$37;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    const-string/jumbo v6, "DELETE FROM contacts WHERE 1"

    invoke-virtual {v4, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$37;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$37;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    const-string/jumbo v6, "REPLACE INTO contacts VALUES(?, ?)"

    invoke-virtual {v4, v6}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$37;->val$contactsCopy:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$37;->val$contactsCopy:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v4, 0x1

    iget v6, v1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-virtual {v3, v4, v6}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v6, 0x2

    iget-boolean v4, v1, Lorg/telegram/tgnet/TLRPC$TL_contact;->mutual:Z

    if-eqz v4, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v3, v6, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v4, p0, Lorg/telegram/messenger/MessagesStorage$37;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v4}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
