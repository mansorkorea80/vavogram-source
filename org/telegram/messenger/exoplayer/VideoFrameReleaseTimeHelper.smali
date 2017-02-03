.class public final Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;
.super Ljava/lang/Object;
.source "VideoFrameReleaseTimeHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;
    }
.end annotation


# static fields
.field private static final CHOREOGRAPHER_SAMPLE_DELAY_MILLIS:J = 0x1f4L

.field private static final MAX_ALLOWED_DRIFT_NS:J = 0x1312d00L

.field private static final MIN_FRAMES_FOR_ADJUSTMENT:I = 0x6

.field private static final VSYNC_OFFSET_PERCENTAGE:J = 0x50L


# instance fields
.field private adjustedLastFrameTimeNs:J

.field private frameCount:J

.field private haveSync:Z

.field private lastFramePresentationTimeUs:J

.field private pendingAdjustedFrameTimeNs:J

.field private syncFramePresentationTimeNs:J

.field private syncUnadjustedReleaseTimeNs:J

.field private final useDefaultDisplayVsync:Z

.field private final vsyncDurationNs:J

.field private final vsyncOffsetNs:J

.field private final vsyncSampler:Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v0, -0x4080

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;-><init>(FZ)V

    return-void
.end method

.method private constructor <init>(FZ)V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->useDefaultDisplayVsync:Z

    if-eqz p2, :cond_0

    invoke-static {}, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;->getInstance()Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    const-wide v0, 0x41cdcd6500000000L

    float-to-double v2, p1

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    const-wide/16 v2, 0x50

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->getDefaultDisplayRefreshRate(Landroid/content/Context;)F

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;-><init>(FZ)V

    return-void
.end method

.method private static closestVsync(JJJ)J
    .locals 14

    sub-long v12, p0, p2

    div-long v10, v12, p4

    mul-long v12, p4, v10

    add-long v8, p2, v12

    cmp-long v12, p0, v8

    if-gtz v12, :cond_0

    sub-long v6, v8, p4

    move-wide v2, v8

    :goto_0
    sub-long v0, v2, p0

    sub-long v4, p0, v6

    cmp-long v12, v0, v4

    if-gez v12, :cond_1

    :goto_1
    return-wide v2

    :cond_0
    move-wide v6, v8

    add-long v2, v8, p4

    goto :goto_0

    :cond_1
    move-wide v2, v6

    goto :goto_1
.end method

.method private static getDefaultDisplayRefreshRate(Landroid/content/Context;)F
    .locals 2

    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRefreshRate()F

    move-result v1

    return v1
.end method

.method private isDriftTooLarge(JJ)Z
    .locals 9

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v0, p1, v4

    iget-wide v4, p0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    sub-long v2, p3, v4

    sub-long v4, v2, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x1312d00

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public adjustReleaseTime(JJ)J
    .locals 23

    const-wide/16 v8, 0x3e8

    mul-long v18, p1, v8

    move-wide/from16 v12, v18

    move-wide/from16 v6, p3

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->lastFramePresentationTimeUs:J

    cmp-long v8, p1, v8

    if-eqz v8, :cond_0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    :cond_0
    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    const-wide/16 v10, 0x6

    cmp-long v8, v8, v10

    if-ltz v8, :cond_5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v8, v18, v8

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    div-long v14, v8, v10

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->adjustedLastFrameTimeNs:J

    add-long v16, v8, v14

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    if-nez v8, :cond_2

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iput-wide v8, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->frameCount:J

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->onSynced()V

    :cond_2
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->lastFramePresentationTimeUs:J

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->pendingAdjustedFrameTimeNs:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    iget-wide v8, v8, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;->sampledVsyncTimeNs:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    :cond_3
    :goto_1
    return-wide v6

    :cond_4
    move-wide/from16 v12, v16

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->syncUnadjustedReleaseTimeNs:J

    add-long/2addr v8, v12

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->syncFramePresentationTimeNs:J

    sub-long v6, v8, v10

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->isDriftTooLarge(JJ)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    iget-wide v8, v8, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;->sampledVsyncTimeNs:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->vsyncDurationNs:J

    invoke-static/range {v6 .. v11}, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->closestVsync(JJJ)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->vsyncOffsetNs:J

    sub-long v6, v20, v8

    goto :goto_1
.end method

.method public disable()V
    .locals 1

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->useDefaultDisplayVsync:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;->removeObserver()V

    :cond_0
    return-void
.end method

.method public enable()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->haveSync:Z

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->useDefaultDisplayVsync:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper;->vsyncSampler:Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/VideoFrameReleaseTimeHelper$VSyncSampler;->addObserver()V

    :cond_0
    return-void
.end method

.method protected onSynced()V
    .locals 0

    return-void
.end method
