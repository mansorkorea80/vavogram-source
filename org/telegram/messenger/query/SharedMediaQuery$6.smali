.class final Lorg/telegram/messenger/query/SharedMediaQuery$6;
.super Ljava/lang/Object;
.source "SharedMediaQuery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/query/SharedMediaQuery;->getMediaCountDatabase(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$classGuid:I

.field final synthetic val$type:I

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(JII)V
    .locals 1

    iput-wide p1, p0, Lorg/telegram/messenger/query/SharedMediaQuery$6;->val$uid:J

    iput p3, p0, Lorg/telegram/messenger/query/SharedMediaQuery$6;->val$type:I

    iput p4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$6;->val$classGuid:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v12, -0x1

    const/4 v1, -0x1

    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "SELECT count FROM media_counts_v2 WHERE uid = %d AND type = %d LIMIT 1"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v10, p0, Lorg/telegram/messenger/query/SharedMediaQuery$6;->val$uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x1

    iget v9, p0, Lorg/telegram/messenger/query/SharedMediaQuery$6;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v1

    :cond_0
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    iget-wide v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$6;->val$uid:J

    long-to-int v8, v2

    if-ne v1, v12, :cond_2

    if-nez v8, :cond_2

    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/MessagesStorage;->getDatabase()Lorg/telegram/SQLite/SQLiteDatabase;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "SELECT COUNT(mid) FROM media_v2 WHERE uid = %d AND type = %d LIMIT 1"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-wide v10, p0, Lorg/telegram/messenger/query/SharedMediaQuery$6;->val$uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v5, v6

    const/4 v6, 0x1

    iget v9, p0, Lorg/telegram/messenger/query/SharedMediaQuery$6;->val$type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Lorg/telegram/SQLite/SQLiteDatabase;->queryFinalized(Ljava/lang/String;[Ljava/lang/Object;)Lorg/telegram/SQLite/SQLiteCursor;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->next()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/telegram/SQLite/SQLiteCursor;->intValue(I)I

    move-result v1

    :cond_1
    invoke-virtual {v0}, Lorg/telegram/SQLite/SQLiteCursor;->dispose()V

    if-eq v1, v12, :cond_2

    iget-wide v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$6;->val$uid:J

    iget v4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$6;->val$type:I

    #calls: Lorg/telegram/messenger/query/SharedMediaQuery;->putMediaCountDatabase(JII)V
    invoke-static {v2, v3, v4, v1}, Lorg/telegram/messenger/query/SharedMediaQuery;->access$200(JII)V

    :cond_2
    iget-wide v2, p0, Lorg/telegram/messenger/query/SharedMediaQuery$6;->val$uid:J

    iget v4, p0, Lorg/telegram/messenger/query/SharedMediaQuery$6;->val$type:I

    iget v5, p0, Lorg/telegram/messenger/query/SharedMediaQuery$6;->val$classGuid:I

    const/4 v6, 0x1

    #calls: Lorg/telegram/messenger/query/SharedMediaQuery;->processLoadedMediaCount(IJIIZ)V
    invoke-static/range {v1 .. v6}, Lorg/telegram/messenger/query/SharedMediaQuery;->access$100(IJIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v7

    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
