.class final Lorg/telegram/messenger/query/BotQuery$5;
.super Ljava/lang/Object;
.source "BotQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/BotQuery;->putBotInfo(Lorg/telegram/tgnet/TLRPC$BotInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$botInfo:Lorg/telegram/tgnet/TLRPC$BotInfo;


# direct methods
.method constructor <init>(Lorg/telegram/tgnet/TLRPC$BotInfo;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/query/BotQuery$5;->val$botInfo:Lorg/telegram/tgnet/TLRPC$BotInfo;

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

    const-string/jumbo v4, "REPLACE INTO bot_info(uid, info) VALUES(?, ?)"

    invoke-virtual {v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    iget-object v3, p0, Lorg/telegram/messenger/query/BotQuery$5;->val$botInfo:Lorg/telegram/tgnet/TLRPC$BotInfo;

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$BotInfo;->getObjectSize()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    iget-object v3, p0, Lorg/telegram/messenger/query/BotQuery$5;->val$botInfo:Lorg/telegram/tgnet/TLRPC$BotInfo;

    invoke-virtual {v3, v0}, Lorg/telegram/tgnet/TLRPC$BotInfo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/telegram/messenger/query/BotQuery$5;->val$botInfo:Lorg/telegram/tgnet/TLRPC$BotInfo;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$BotInfo;->user_id:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V
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
