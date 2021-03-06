.class final Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;
.super Ljava/lang/Object;
.source "RollingSampleBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InfoQueue"
.end annotation


# static fields
.field private static final SAMPLE_CAPACITY_INCREMENT:I = 0x3e8


# instance fields
.field private absoluteReadIndex:I

.field private capacity:I

.field private encryptionKeys:[[B

.field private flags:[I

.field private offsets:[J

.field private queueSize:I

.field private relativeReadIndex:I

.field private relativeWriteIndex:I

.field private sizes:[I

.field private timesUs:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->timesUs:[J

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->flags:[I

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->sizes:[I

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->encryptionKeys:[[B

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->absoluteReadIndex:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    return-void
.end method

.method public declared-synchronized commitSample(JIJI[B)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->timesUs:[J

    iget v9, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    aput-wide p1, v8, v9

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    iget v9, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    aput-wide p4, v8, v9

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->sizes:[I

    iget v9, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    aput p6, v8, v9

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->flags:[I

    iget v9, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    aput p3, v8, v9

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->encryptionKeys:[[B

    iget v9, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    aput-object p7, v8, v9

    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    if-ne v8, v9, :cond_1

    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    add-int/lit16 v2, v8, 0x3e8

    new-array v5, v2, [J

    new-array v7, v2, [J

    new-array v4, v2, [I

    new-array v6, v2, [I

    new-array v3, v2, [[B

    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    sub-int v1, v8, v9

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    iget v9, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v5, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->timesUs:[J

    iget v9, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v7, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->flags:[I

    iget v9, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v4, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->sizes:[I

    iget v9, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v6, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->encryptionKeys:[[B

    iget v9, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    const/4 v10, 0x0

    invoke-static {v8, v9, v3, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    const/4 v9, 0x0

    invoke-static {v8, v9, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->timesUs:[J

    const/4 v9, 0x0

    invoke-static {v8, v9, v7, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->flags:[I

    const/4 v9, 0x0

    invoke-static {v8, v9, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->sizes:[I

    const/4 v9, 0x0

    invoke-static {v8, v9, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->encryptionKeys:[[B

    const/4 v9, 0x0

    invoke-static {v8, v9, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v5, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    iput-object v7, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->timesUs:[J

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->flags:[I

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->sizes:[I

    iput-object v3, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->encryptionKeys:[[B

    const/4 v8, 0x0

    iput v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    iput v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    iput v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    iget v9, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    if-ne v8, v9, :cond_0

    const/4 v8, 0x0

    iput v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public discardUpstreamSamples(I)J
    .locals 6

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->getWriteIndex()I

    move-result v2

    sub-int v0, v2, p1

    if-ltz v0, :cond_0

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    if-gt v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkArgument(Z)V

    if-nez v0, :cond_3

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->absoluteReadIndex:I

    if-nez v2, :cond_1

    const-wide/16 v2, 0x0

    :goto_1
    return-wide v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    if-nez v2, :cond_2

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    :goto_2
    add-int/lit8 v1, v2, -0x1

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    aget-wide v2, v2, v1

    iget-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->sizes:[I

    aget v4, v4, v1

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_1

    :cond_2
    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    goto :goto_2

    :cond_3
    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    rem-int/2addr v2, v3

    iput v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    iget v3, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    aget-wide v2, v2, v3

    goto :goto_1
.end method

.method public getReadIndex()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->absoluteReadIndex:I

    return v0
.end method

.method public getWriteIndex()I
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->absoluteReadIndex:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized moveToNextSample()J
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->absoluteReadIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->absoluteReadIndex:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    :cond_0
    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    aget-wide v2, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v2

    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->sizes:[I

    aget v1, v1, v0

    int-to-long v2, v1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    aget-wide v4, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-long/2addr v2, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized peekSample(Lorg/telegram/messenger/exoplayer/SampleHolder;Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->timesUs:[J

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    aget-wide v0, v0, v1

    iput-wide v0, p1, Lorg/telegram/messenger/exoplayer/SampleHolder;->timeUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->sizes:[I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    aget v0, v0, v1

    iput v0, p1, Lorg/telegram/messenger/exoplayer/SampleHolder;->size:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->flags:[I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    aget v0, v0, v1

    iput v0, p1, Lorg/telegram/messenger/exoplayer/SampleHolder;->flags:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    aget-wide v0, v0, v1

    iput-wide v0, p2, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->offset:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->encryptionKeys:[[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    aget-object v0, v0, v1

    iput-object v0, p2, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$SampleExtrasHolder;->encryptionKeyId:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized skipToKeyframeBefore(J)J
    .locals 11

    const-wide/16 v6, -0x1

    monitor-enter p0

    :try_start_0
    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->timesUs:[J

    iget v9, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    aget-wide v8, v8, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v8, p1, v8

    if-gez v8, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-wide v6

    :cond_1
    :try_start_1
    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    if-nez v8, :cond_3

    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    :goto_1
    add-int/lit8 v2, v8, -0x1

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->timesUs:[J

    aget-wide v0, v8, v2

    cmp-long v8, p1, v0

    if-gtz v8, :cond_0

    const/4 v3, 0x0

    const/4 v4, -0x1

    iget v5, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    :goto_2
    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    if-eq v5, v8, :cond_2

    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->timesUs:[J

    aget-wide v8, v8, v5

    cmp-long v8, v8, p1

    if-lez v8, :cond_4

    :cond_2
    const/4 v8, -0x1

    if-eq v4, v8, :cond_0

    iget v6, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    sub-int/2addr v6, v4

    iput v6, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->queueSize:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    add-int/2addr v6, v4

    iget v7, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    rem-int/2addr v6, v7

    iput v6, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    iget v6, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->absoluteReadIndex:I

    add-int/2addr v6, v4

    iput v6, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->absoluteReadIndex:I

    iget-object v6, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->offsets:[J

    iget v7, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeReadIndex:I

    aget-wide v6, v6, v7

    goto :goto_0

    :cond_3
    iget v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->relativeWriteIndex:I

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->flags:[I

    aget v8, v8, v5

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5

    move v4, v3

    :cond_5
    add-int/lit8 v8, v5, 0x1

    iget v9, p0, Lorg/telegram/messenger/exoplayer/extractor/RollingSampleBuffer$InfoQueue;->capacity:I

    rem-int v5, v8, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method
