.class final Lorg/telegram/messenger/query/MessagesQuery$4;
.super Ljava/lang/Object;
.source "MessagesQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/MessagesQuery;->savePinnedMessage(Lorg/telegram/tgnet/TLRPC$Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Lorg/telegram/tgnet/TLRPC$Message;


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/query/MessagesQuery$4;->val$result:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "REPLACE INTO chat_pinned VALUES(?, ?, ?)"

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v3, p0, Lorg/telegram/messenger/query/MessagesQuery$4;->val$result:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    iget-object v3, p0, Lorg/telegram/messenger/query/MessagesQuery$4;->val$result:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v0}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/query/MessagesQuery$4;->val$result:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v3, 0x2

    iget-object v4, p0, Lorg/telegram/messenger/query/MessagesQuery$4;->val$result:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
