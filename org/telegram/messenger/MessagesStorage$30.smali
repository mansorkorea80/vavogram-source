.class Lorg/telegram/messenger/MessagesStorage$30;
.super Ljava/lang/Object;
.source "MessagesStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesStorage;->updateChannelUsers(ILjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field final synthetic val$channel_id:I

.field final synthetic val$participants:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesStorage;ILjava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$30;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$30;->val$channel_id:I

    iput-object p3, p0, Lorg/telegram/messenger/MessagesStorage$30;->val$participants:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    :try_start_0
    iget v8, p0, Lorg/telegram/messenger/MessagesStorage$30;->val$channel_id:I

    neg-int v8, v8

    int-to-long v4, v8

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$30;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v8}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "DELETE FROM channel_users_v2 WHERE did = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->stepThis()Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$30;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v8}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$30;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v8}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    const-string/jumbo v9, "REPLACE INTO channel_users_v2 VALUES(?, ?, ?, ?)"

    invoke-virtual {v8, v9}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v2, v8

    const/4 v0, 0x0

    :goto_0
    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$30;->val$participants:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$30;->val$participants:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v4, v5}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v8, 0x2

    iget v9, v6, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-virtual {v7, v8, v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v6}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->getObjectSize()I

    move-result v8

    invoke-direct {v1, v8}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    invoke-virtual {v6, v1}, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v1}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v1}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$30;->this$0:Lorg/telegram/messenger/MessagesStorage;

    #getter for: Lorg/telegram/messenger/MessagesStorage;->database:Lorg/telegram/SQLite/SQLiteDatabase;
    invoke-static {v8}, Lorg/telegram/messenger/MessagesStorage;->access$000(Lorg/telegram/messenger/MessagesStorage;)Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    iget-object v8, p0, Lorg/telegram/messenger/MessagesStorage$30;->this$0:Lorg/telegram/messenger/MessagesStorage;

    iget v9, p0, Lorg/telegram/messenger/MessagesStorage$30;->val$channel_id:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v8, v9, v10, v11, v12}, Lorg/telegram/messenger/MessagesStorage;->loadChatInfo(ILjava/util/concurrent/Semaphore;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v8, "tmessages"

    invoke-static {v8, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
