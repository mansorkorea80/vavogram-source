.class final Lorg/telegram/messenger/query/SharedMediaQuery$8;
.super Ljava/lang/Object;
.source "SharedMediaQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SharedMediaQuery;->putMediaDatabase(JILjava/util/ArrayList;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$max_id:I

.field final synthetic val$messages:Ljava/util/ArrayList;

.field final synthetic val$topReached:Z

.field final synthetic val$type:I

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(Ljava/util/ArrayList;ZJII)V
    .locals 1

    iput-object p1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$messages:Ljava/util/ArrayList;

    iput-boolean p2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$topReached:Z

    iput-wide p3, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$uid:J

    iput p5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$max_id:I

    iput p6, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v4, 0x1

    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$topReached:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$uid:J

    iget v5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$max_id:I

    iget v6, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$type:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lorg/telegram/messenger/MessagesStorage;->doneHolesInMedia(JII)V

    iget-object v1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteDatabase;->beginTransaction()V

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "REPLACE INTO media_v2 VALUES(?, ?, ?, ?, ?)"

    invoke-virtual {v1, v2}, Lorg/telegram/SQLite/SQLiteDatabase;->executeFast(Ljava/lang/String;)Lorg/telegram/SQLite/SQLitePreparedStatement;

    move-result-object v9

    iget-object v1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v8}, Lorg/telegram/messenger/query/SharedMediaQuery;->canAddMessageToMedia(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v8, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    int-to-long v10, v2

    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v2, :cond_3

    iget-object v2, v8, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    int-to-long v2, v2

    const/16 v5, 0x20

    shl-long/2addr v2, v5

    or-long/2addr v10, v2

    :cond_3
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->requery()V

    new-instance v0, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {v8}, Lorg/telegram/tgnet/TLRPC$Message;->getObjectSize()I

    move-result v2

    invoke-direct {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    invoke-virtual {v8, v0}, Lorg/telegram/tgnet/TLRPC$Message;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    const/4 v2, 0x1

    invoke-virtual {v9, v2, v10, v11}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v2, 0x2

    iget-wide v12, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$uid:J

    invoke-virtual {v9, v2, v12, v13}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindLong(IJ)V

    const/4 v2, 0x3

    iget v3, v8, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-virtual {v9, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v2, 0x4

    iget v3, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$type:I

    invoke-virtual {v9, v2, v3}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindInteger(II)V

    const/4 v2, 0x5

    invoke-virtual {v9, v2, v0}, Lorg/telegram/SQLite/SQLitePreparedStatement;->bindByteBuffer(ILorg/telegram/tgnet/NativeByteBuffer;)V

    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->step()I

    invoke-virtual {v0}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    const-string/jumbo v1, "tmessages"

    invoke-static {v1, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-virtual {v9}, Lorg/telegram/SQLite/SQLitePreparedStatement;->dispose()V

    iget-boolean v1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$topReached:Z

    if-eqz v1, :cond_5

    iget v1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$max_id:I

    if-eqz v1, :cond_6

    :cond_5
    iget-boolean v1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$topReached:Z

    if-eqz v1, :cond_7

    :goto_2
    iget v1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$max_id:I

    if-eqz v1, :cond_8

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$uid:J

    iget v5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$max_id:I

    iget v6, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$type:I

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInMedia(JIII)V

    :cond_6
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/SQLite/SQLiteDatabase;->commitTransaction()V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$messages:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    goto :goto_2

    :cond_8
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-wide v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$uid:J

    const v5, 0x7fffffff

    iget v6, p0, Lorg/telegram/messenger/query/SharedMediaQuery$8;->val$type:I

    invoke-virtual/range {v1 .. v6}, Lorg/telegram/messenger/MessagesStorage;->closeHolesInMedia(JIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method
