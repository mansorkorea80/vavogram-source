.class final Lorg/telegram/messenger/query/StickersQuery$14;
.super Ljava/lang/Object;
.source "StickersQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/StickersQuery;->processLoadedFeaturedStickers(Ljava/util/ArrayList;Ljava/util/ArrayList;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cache:Z

.field final synthetic val$date:I

.field final synthetic val$hash:I

.field final synthetic val$res:Ljava/util/ArrayList;

.field final synthetic val$unreadStickers:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(ZLjava/util/ArrayList;IILjava/util/ArrayList;)V
    .locals 0

    iput-boolean p1, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$cache:Z

    iput-object p2, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$res:Ljava/util/ArrayList;

    iput p3, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$date:I

    iput p4, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$hash:I

    iput-object p5, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$unreadStickers:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-wide/16 v6, 0x3e8

    const/4 v12, 0x0

    iget-boolean v5, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$cache:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$res:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v6

    iget v5, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$date:I

    int-to-long v10, v5

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0xe10

    cmp-long v5, v8, v10

    if-gez v5, :cond_1

    :cond_0
    iget-boolean v5, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$cache:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$res:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    iget v5, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$hash:I

    if-nez v5, :cond_4

    :cond_1
    new-instance v5, Lorg/telegram/messenger/query/StickersQuery$14$1;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/query/StickersQuery$14$1;-><init>(Lorg/telegram/messenger/query/StickersQuery$14;)V

    iget-object v8, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$res:Ljava/util/ArrayList;

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$cache:Z

    if-nez v8, :cond_3

    :goto_0
    invoke-static {v5, v6, v7}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$res:Ljava/util/ArrayList;

    if-nez v5, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$res:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_2
    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$res:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$res:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-wide v6, v5, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-boolean v5, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$cache:Z

    if-nez v5, :cond_6

    iget-object v5, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$unreadStickers:Ljava/util/ArrayList;

    iget v6, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$date:I

    iget v7, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$hash:I

    #calls: Lorg/telegram/messenger/query/StickersQuery;->putFeaturedStickersToCache(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    invoke-static {v4, v5, v6, v7}, Lorg/telegram/messenger/query/StickersQuery;->access$1200(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_6
    new-instance v5, Lorg/telegram/messenger/query/StickersQuery$14$2;

    invoke-direct {v5, p0, v3, v4}, Lorg/telegram/messenger/query/StickersQuery$14$2;-><init>(Lorg/telegram/messenger/query/StickersQuery$14;Ljava/util/HashMap;Ljava/util/ArrayList;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    iget-boolean v5, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$cache:Z

    if-nez v5, :cond_2

    new-instance v5, Lorg/telegram/messenger/query/StickersQuery$14$3;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/query/StickersQuery$14$3;-><init>(Lorg/telegram/messenger/query/StickersQuery$14;)V

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    iget v5, p0, Lorg/telegram/messenger/query/StickersQuery$14;->val$date:I

    const/4 v6, 0x0

    #calls: Lorg/telegram/messenger/query/StickersQuery;->putFeaturedStickersToCache(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    invoke-static {v12, v12, v5, v6}, Lorg/telegram/messenger/query/StickersQuery;->access$1200(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    goto :goto_1
.end method
