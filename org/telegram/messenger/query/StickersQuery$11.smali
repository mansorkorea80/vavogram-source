.class final Lorg/telegram/messenger/query/StickersQuery$11;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->loadFeaturesStickers(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v14, 0x1

    const/4 v7, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v11

    invoke-virtual {v11}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v11

    const-string/jumbo v12, "SELECT data, unread, date, hash FROM stickers_featured WHERE 1"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11, v12, v13}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v3, v11}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v3, v11, v12}, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    :cond_1
    const/4 v11, 0x1

    :try_start_2
    invoke-virtual {v2, v11}, Lorg/telegram/SQLite/SQLiteCursor;->byteBufferValue(I)Lorg/telegram/tgnet/NativeByteBuffer;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt64(Z)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    :cond_3
    const/4 v11, 0x2

    invoke-virtual {v2, v11}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v4

    #calls: Lorg/telegram/messenger/query/StickersQuery;->calcFeaturedStickersHash(Ljava/util/ArrayList;)I
    invoke-static {v7}, Lorg/telegram/messenger/query/StickersQuery;->access$700(Ljava/util/ArrayList;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_5
    :goto_2
    #calls: Lorg/telegram/messenger/query/StickersQuery;->processLoadedFeaturedStickers(Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V
    invoke-static {v7, v10, v14, v4, v6}, Lorg/telegram/messenger/query/StickersQuery;->access$800(Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V

    return-void

    :catch_0
    move-exception v5

    :goto_3
    :try_start_3
    const-string/jumbo v11, "tmessages"

    invoke-static {v11, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    goto :goto_2

    :catchall_0
    move-exception v11

    :goto_4
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    :cond_6
    throw v11

    :catchall_1
    move-exception v11

    move-object v7, v8

    goto :goto_4

    :catch_1
    move-exception v5

    move-object v7, v8

    goto :goto_3
.end method
