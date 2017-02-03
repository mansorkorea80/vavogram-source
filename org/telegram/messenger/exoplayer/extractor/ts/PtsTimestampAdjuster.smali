.class public final Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;
.super Ljava/lang/Object;
.source "PtsTimestampAdjuster.java"


# static fields
.field public static final DO_NOT_OFFSET:J = 0x7fffffffffffffffL

.field private static final MAX_PTS_PLUS_ONE:J = 0x200000000L


# instance fields
.field private final firstSampleTimestampUs:J

.field private volatile lastPts:J

.field private timestampOffsetUs:J


# direct methods
.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->firstSampleTimestampUs:J

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->lastPts:J

    return-void
.end method

.method public static ptsToUs(J)J
    .locals 4

    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p0

    const-wide/32 v2, 0x15f90

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static usToPts(J)J
    .locals 4

    const-wide/32 v0, 0x15f90

    mul-long/2addr v0, p0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public adjustTimestamp(J)J
    .locals 13

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->lastPts:J

    const-wide/high16 v10, -0x8000

    cmp-long v8, v8, v10

    if-eqz v8, :cond_0

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->lastPts:J

    const-wide v10, 0x100000000L

    add-long/2addr v8, v10

    const-wide v10, 0x200000000L

    div-long v0, v8, v10

    const-wide v8, 0x200000000L

    const-wide/16 v10, 0x1

    sub-long v10, v0, v10

    mul-long/2addr v8, v10

    add-long v4, p1, v8

    const-wide v8, 0x200000000L

    mul-long/2addr v8, v0

    add-long v2, p1, v8

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->lastPts:J

    sub-long v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    iget-wide v10, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->lastPts:J

    sub-long v10, v2, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    move-wide p1, v4

    :cond_0
    :goto_0
    invoke-static {p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->ptsToUs(J)J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->firstSampleTimestampUs:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->lastPts:J

    const-wide/high16 v10, -0x8000

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->firstSampleTimestampUs:J

    sub-long/2addr v8, v6

    iput-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->timestampOffsetUs:J

    :cond_1
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->lastPts:J

    iget-wide v8, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->timestampOffsetUs:J

    add-long/2addr v8, v6

    return-wide v8

    :cond_2
    move-wide p1, v2

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 4

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->lastPts:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/PtsTimestampAdjuster;->lastPts:J

    return-void
.end method
