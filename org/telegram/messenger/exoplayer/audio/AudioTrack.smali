.class public final Lorg/telegram/messenger/exoplayer/audio/AudioTrack;
.super Ljava/lang/Object;
.source "AudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV23;,
        Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV19;,
        Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;,
        Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;,
        Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;,
        Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException;
    }
.end annotation


# static fields
.field private static final BUFFER_MULTIPLICATION_FACTOR:I = 0x4

.field public static final CURRENT_POSITION_NOT_SET:J = -0x8000000000000000L

.field private static final MAX_AUDIO_TIMESTAMP_OFFSET_US:J = 0x4c4b40L

.field private static final MAX_BUFFER_DURATION_US:J = 0xb71b0L

.field private static final MAX_LATENCY_US:J = 0x4c4b40L

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_BUFFER_DURATION_US:J = 0x3d090L

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final MIN_TIMESTAMP_SAMPLE_INTERVAL_US:I = 0x7a120

.field private static final PASSTHROUGH_BUFFER_DURATION_US:J = 0x3d090L

.field public static final RESULT_BUFFER_CONSUMED:I = 0x2

.field public static final RESULT_POSITION_DISCONTINUITY:I = 0x1

.field public static final SESSION_ID_NOT_SET:I = 0x0

.field private static final START_IN_SYNC:I = 0x1

.field private static final START_NEED_SYNC:I = 0x2

.field private static final START_NOT_SET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioTrack"

.field public static enablePreV21AudioSessionWorkaround:Z

.field public static failOnSpuriousAudioTimestamp:Z


# instance fields
.field private final audioCapabilities:Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;

.field private audioTimestampSet:Z

.field private audioTrack:Landroid/media/AudioTrack;

.field private final audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

.field private bufferBytesRemaining:I

.field private bufferSize:I

.field private bufferSizeUs:J

.field private channelConfig:I

.field private framesPerEncodedSample:I

.field private getLatencyMethod:Ljava/lang/reflect/Method;

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private lastPlayheadSampleTimeUs:J

.field private lastTimestampSampleTimeUs:J

.field private latencyUs:J

.field private nextPlayheadOffsetIndex:I

.field private passthrough:Z

.field private pcmFrameSize:I

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private final releasingConditionVariable:Landroid/os/ConditionVariable;

.field private resampledBuffer:Ljava/nio/ByteBuffer;

.field private resumeSystemTimeUs:J

.field private sampleRate:I

.field private smoothedPlayheadOffsetUs:J

.field private sourceEncoding:I

.field private startMediaTimeState:I

.field private startMediaTimeUs:J

.field private final streamType:I

.field private submittedEncodedFrames:J

.field private submittedPcmBytes:J

.field private targetEncoding:I

.field private temporaryBuffer:[B

.field private temporaryBufferOffset:I

.field private useResampledBuffer:Z

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    sput-boolean v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;-><init>(Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;I)V

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioCapabilities:Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;

    iput p2, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->streamType:I

    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    :try_start_0
    const-class v1, Landroid/media/AudioTrack;

    const-string/jumbo v2, "getLatency"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    new-instance v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV23;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV23;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    :goto_1
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->playheadOffsets:[J

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->volume:F

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    return-void

    :cond_1
    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_2

    new-instance v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV19;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtilV19;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {v0, v3}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;-><init>(Lorg/telegram/messenger/exoplayer/audio/AudioTrack$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/exoplayer/audio/AudioTrack;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private checkAudioTrackInitialized()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    :goto_0
    new-instance v1, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException;

    iget v2, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferSize:I

    invoke-direct {v1, v0, v2, v3, v4}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException;-><init>(IIII)V

    throw v1

    :catch_0
    move-exception v1

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-object v2, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    throw v1
.end method

.method private durationUsToFrames(J)J
    .locals 5

    iget v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->sampleRate:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private framesToDurationUs(J)J
    .locals 5

    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    iget v2, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->sampleRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getEncodingForMimeType(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    return v0

    :sswitch_0
    const-string/jumbo v2, "audio/ac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "audio/eac3"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "audio/vnd.dts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "audio/vnd.dts.hd"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x6

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x7

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x8

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x41455b98 -> :sswitch_2
        0xb269698 -> :sswitch_0
        0x59ae0c65 -> :sswitch_1
        0x59c2dc42 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I
    .locals 3

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_1

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/DtsUtil;->parseDtsAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_2

    invoke-static {}, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->getAc3SyncframeAudioSampleCount()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    if-ne p0, v0, :cond_3

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/Ac3Util;->parseEAc3SyncframeAudioSampleCount(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected audio encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSubmittedFrames()J
    .locals 2

    iget-boolean v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->passthrough:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->submittedEncodedFrames:J

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->submittedPcmBytes:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->pcmBytesToFrames(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private hasCurrentPositionUs()Z
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeSampleSyncParams()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v10

    const-wide/16 v14, 0x0

    cmp-long v9, v10, v14

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v12, v14, v16

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    sub-long v14, v12, v14

    const-wide/16 v16, 0x7530

    cmp-long v9, v14, v16

    if-ltz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->playheadOffsets:[J

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    sub-long v16, v10, v12

    aput-wide v16, v9, v14

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    add-int/lit8 v9, v9, 0x1

    rem-int/lit8 v9, v9, 0xa

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    const/16 v14, 0xa

    if-ge v9, v14, :cond_2

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    :cond_2
    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    if-ge v7, v9, :cond_3

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->playheadOffsets:[J

    aget-wide v16, v9, v7

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    int-to-long v0, v9

    move-wide/from16 v18, v0

    div-long v16, v16, v18

    add-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v9

    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    sub-long v14, v12, v14

    const-wide/32 v16, 0x7a120

    cmp-long v9, v14, v16

    if-ltz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;->updateTimestamp()Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v4, v14, v16

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v9}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->resumeSystemTimeUs:J

    cmp-long v9, v4, v14

    if-gez v9, :cond_6

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->passthrough:Z

    if-nez v9, :cond_5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    const/4 v9, 0x0

    check-cast v9, [Ljava/lang/Object;

    invoke-virtual {v14, v15, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-long v14, v9

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferSizeUs:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->latencyUs:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->latencyUs:J

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->latencyUs:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->latencyUs:J

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_5

    const-string/jumbo v9, "AudioTrack"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Ignoring impossibly large audio latency: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->latencyUs:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->latencyUs:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    goto/16 :goto_0

    :cond_6
    sub-long v14, v4, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Spurious audio timestamp (system clock mismatch): "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-boolean v9, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v9, :cond_7

    new-instance v9, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v9, v8}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_7
    const-string/jumbo v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v14

    sub-long/2addr v14, v10

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/32 v16, 0x4c4b40

    cmp-long v9, v14, v16

    if-lez v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Spurious audio timestamp (frame position mismatch): "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v14, ", "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-boolean v9, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->failOnSpuriousAudioTimestamp:Z

    if-eqz v9, :cond_9

    new-instance v9, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;

    invoke-direct {v9, v8}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InvalidAudioTrackTimestampException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_9
    const-string/jumbo v9, "AudioTrack"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    goto/16 :goto_2

    :catch_0
    move-exception v6

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-object v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->getLatencyMethod:Ljava/lang/reflect/Method;

    goto/16 :goto_3
.end method

.method private needsPassthroughWorkarounds()Z
    .locals 2

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->targetEncoding:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->targetEncoding:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overrideHasPendingData()Z
    .locals 2

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private pcmBytesToFrames(J)J
    .locals 3

    iget v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v0, v0

    div-long v0, p1, v0

    return-wide v0
.end method

.method private releaseKeepSessionIdAudioTrack()V
    .locals 2

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    new-instance v1, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$2;

    invoke-direct {v1, p0, v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$2;-><init>(Lorg/telegram/messenger/exoplayer/audio/AudioTrack;Landroid/media/AudioTrack;)V

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$2;->start()V

    goto :goto_0
.end method

.method private static resampleTo16BitPcm(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 6

    const/4 v5, 0x0

    sparse-switch p3, :sswitch_data_0

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    :sswitch_0
    mul-int/lit8 v3, p2, 0x2

    :goto_0
    move-object v2, p4

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ge v4, v3, :cond_1

    :cond_0
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    :cond_1
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    add-int v1, p1, p2

    sparse-switch p3, :sswitch_data_1

    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    :sswitch_1
    div-int/lit8 v4, p2, 0x3

    mul-int/lit8 v3, v4, 0x2

    goto :goto_0

    :sswitch_2
    div-int/lit8 v3, p2, 0x2

    goto :goto_0

    :sswitch_3
    move v0, p1

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x80

    int-to-byte v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_4
    move v0, p1

    :goto_2
    if-ge v0, v1, :cond_2

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    :sswitch_5
    move v0, p1

    :goto_3
    if-ge v0, v1, :cond_2

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_3

    :cond_2
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x3 -> :sswitch_0
        0x40000000 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x3 -> :sswitch_3
        0x40000000 -> :sswitch_5
    .end sparse-switch
.end method

.method private resetSyncParams()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    iput v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    iput v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->nextPlayheadOffsetIndex:I

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->lastPlayheadSampleTimeUs:J

    iput-boolean v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    iput-wide v2, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->lastTimestampSampleTimeUs:J

    return-void
.end method

.method private setAudioTrackVolume()V
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->volume:F

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->setAudioTrackVolumeV21(Landroid/media/AudioTrack;F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->volume:F

    invoke-static {v0, v1}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->setAudioTrackVolumeV3(Landroid/media/AudioTrack;F)V

    goto :goto_0
.end method

.method private static setAudioTrackVolumeV21(Landroid/media/AudioTrack;F)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    return-void
.end method

.method private static setAudioTrackVolumeV3(Landroid/media/AudioTrack;F)V
    .locals 0

    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    return-void
.end method

.method private static writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public configure(Ljava/lang/String;III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->configure(Ljava/lang/String;IIII)V

    return-void
.end method

.method public configure(Ljava/lang/String;IIII)V
    .locals 16

    packed-switch p2, :pswitch_data_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unsupported channel count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :pswitch_0
    const/4 v2, 0x4

    :goto_0
    const-string/jumbo v9, "audio/raw"

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_1

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result v8

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v9

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->sourceEncoding:I

    if-ne v9, v8, :cond_4

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->sampleRate:I

    move/from16 v0, p3

    if-ne v9, v0, :cond_4

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->channelConfig:I

    if-ne v9, v2, :cond_4

    :goto_3
    return-void

    :pswitch_1
    const/16 v2, 0xc

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x1c

    goto :goto_0

    :pswitch_3
    const/16 v2, 0xcc

    goto :goto_0

    :pswitch_4
    const/16 v2, 0xdc

    goto :goto_0

    :pswitch_5
    const/16 v2, 0xfc

    goto :goto_0

    :pswitch_6
    const/16 v2, 0x4fc

    goto :goto_0

    :pswitch_7
    sget v2, Lorg/telegram/messenger/exoplayer/C;->CHANNEL_OUT_7POINT1_SURROUND:I

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    const/4 v9, 0x3

    move/from16 v0, p4

    if-eq v0, v9, :cond_2

    const/4 v9, 0x2

    move/from16 v0, p4

    if-eq v0, v9, :cond_2

    const/high16 v9, -0x8000

    move/from16 v0, p4

    if-eq v0, v9, :cond_2

    const/high16 v9, 0x4000

    move/from16 v0, p4

    if-ne v0, v9, :cond_3

    :cond_2
    move/from16 v8, p4

    goto :goto_2

    :cond_3
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unsupported PCM encoding: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->reset()V

    move-object/from16 v0, p0

    iput v8, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->sourceEncoding:I

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->passthrough:Z

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->sampleRate:I

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->channelConfig:I

    if-eqz v7, :cond_5

    :goto_4
    move-object/from16 v0, p0

    iput v8, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->targetEncoding:I

    mul-int/lit8 v9, p2, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->pcmFrameSize:I

    if-eqz p5, :cond_6

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferSize:I

    :goto_5
    if-eqz v7, :cond_d

    const-wide/16 v10, -0x1

    :goto_6
    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferSizeUs:J

    goto :goto_3

    :cond_5
    const/4 v8, 0x2

    goto :goto_4

    :cond_6
    if-eqz v7, :cond_9

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->targetEncoding:I

    const/4 v10, 0x5

    if-eq v9, v10, :cond_7

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->targetEncoding:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_8

    :cond_7
    const/16 v9, 0x5000

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferSize:I

    goto :goto_5

    :cond_8
    const v9, 0xc000

    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferSize:I

    goto :goto_5

    :cond_9
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->targetEncoding:I

    move/from16 v0, p3

    invoke-static {v0, v2, v9}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    const/4 v9, -0x2

    if-eq v5, v9, :cond_a

    const/4 v9, 0x1

    :goto_7
    invoke-static {v9}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    mul-int/lit8 v6, v5, 0x4

    const-wide/32 v10, 0x3d090

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v10

    long-to-int v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->pcmFrameSize:I

    mul-int v4, v9, v10

    int-to-long v10, v5

    const-wide/32 v12, 0xb71b0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v14, v9

    mul-long/2addr v12, v14

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    long-to-int v3, v10

    if-ge v6, v4, :cond_b

    :goto_8
    move-object/from16 v0, p0

    iput v4, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferSize:I

    goto :goto_5

    :cond_a
    const/4 v9, 0x0

    goto :goto_7

    :cond_b
    if-le v6, v3, :cond_c

    move v4, v3

    goto :goto_8

    :cond_c
    move v4, v6

    goto :goto_8

    :cond_d
    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferSize:I

    int-to-long v10, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->pcmBytesToFrames(J)J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v10

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getBufferSize()I
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferSize:I

    return v0
.end method

.method public getBufferSizeUs()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferSizeUs:J

    return-wide v0
.end method

.method public getCurrentPositionUs(Z)J
    .locals 18

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->hasCurrentPositionUs()Z

    move-result v14

    if-nez v14, :cond_1

    const-wide/high16 v6, -0x8000

    :cond_0
    :goto_0
    return-wide v6

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v14}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_2

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->maybeSampleSyncParams()V

    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v12, v14, v16

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTimestampSet:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampNanoTime()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    sub-long v10, v12, v14

    long-to-float v14, v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v15}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackSpeed()F

    move-result v15

    mul-float/2addr v14, v15

    float-to-long v2, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->durationUsToFrames(J)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;->getTimestampFramePosition()J

    move-result-wide v14

    add-long v4, v14, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->playheadOffsetCount:I

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v14}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPositionUs()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    :goto_1
    if-nez p1, :cond_0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->latencyUs:J

    sub-long/2addr v6, v14

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->smoothedPlayheadOffsetUs:J

    add-long/2addr v14, v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    move-wide/from16 v16, v0

    add-long v6, v14, v16

    goto :goto_1
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;IIJ)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v11}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    const/4 v10, 0x0

    :cond_0
    :goto_0
    return v10

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v11}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v11}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_2

    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    if-nez v11, :cond_9

    if-nez p3, :cond_3

    const/4 v10, 0x2

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->targetEncoding:I

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->sourceEncoding:I

    if-eq v11, v12, :cond_b

    const/4 v11, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->useResampledBuffer:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->useResampledBuffer:Z

    if-eqz v11, :cond_4

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->targetEncoding:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_c

    const/4 v11, 0x1

    :goto_2
    invoke-static {v11}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkState(Z)V

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->sourceEncoding:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v11, v12}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->resampleTo16BitPcm(Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    move-object/from16 p1, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    :cond_4
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    invoke-virtual/range {p1 .. p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->passthrough:Z

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->framesPerEncodedSample:I

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->targetEncoding:I

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->getFramesPerEncodedSample(ILjava/nio/ByteBuffer;)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->framesPerEncodedSample:I

    :cond_5
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    if-nez v11, :cond_d

    const-wide/16 v12, 0x0

    move-wide/from16 v0, p4

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    :cond_6
    :goto_3
    sget v11, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v11, v12, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    array-length v11, v11

    move/from16 v0, p3

    if-ge v11, v0, :cond_8

    :cond_7
    move/from16 v0, p3

    new-array v11, v0, [B

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    const/4 v12, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v11, v12, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    :cond_9
    const/4 v6, 0x0

    sget v11, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v11, v12, :cond_f

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->submittedPcmBytes:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v11}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->pcmFrameSize:I

    int-to-long v0, v11

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    sub-long/2addr v12, v14

    long-to-int v4, v12

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferSize:I

    sub-int v5, v11, v4

    if-lez v5, :cond_a

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->temporaryBuffer:[B

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    invoke-virtual {v11, v12, v13, v5}, Landroid/media/AudioTrack;->write([BII)I

    move-result v6

    if-ltz v6, :cond_a

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    add-int/2addr v11, v6

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->temporaryBufferOffset:I

    :cond_a
    :goto_4
    if-gez v6, :cond_11

    new-instance v11, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;

    invoke-direct {v11, v6}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$WriteException;-><init>(I)V

    throw v11

    :cond_b
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->framesToDurationUs(J)J

    move-result-wide v14

    add-long v8, v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_e

    sub-long v12, v8, p4

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/32 v14, 0x30d40

    cmp-long v11, v12, v14

    if-lez v11, :cond_e

    const-string/jumbo v11, "AudioTrack"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Discontinuity detected [expected "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", got "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide/from16 v0, p4

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    :cond_e
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_6

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    sub-long v14, p4, v8

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->startMediaTimeUs:J

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    or-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->useResampledBuffer:Z

    if-eqz v11, :cond_10

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->resampledBuffer:Ljava/nio/ByteBuffer;

    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    invoke-static {v11, v7, v12}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->writeNonBlockingV21(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v6

    goto/16 :goto_4

    :cond_10
    move-object/from16 v7, p1

    goto :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    sub-int/2addr v11, v6

    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->passthrough:Z

    if-nez v11, :cond_12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->submittedPcmBytes:J

    int-to-long v14, v6

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->submittedPcmBytes:J

    :cond_12
    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    if-nez v11, :cond_0

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->passthrough:Z

    if-eqz v11, :cond_13

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->submittedEncodedFrames:J

    move-object/from16 v0, p0

    iget v11, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->framesPerEncodedSample:I

    int-to-long v14, v11

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->submittedEncodedFrames:J

    :cond_13
    or-int/lit8 v10, v10, 0x2

    goto/16 :goto_0
.end method

.method public handleDiscontinuity()V
    .locals 2

    iget v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    :cond_0
    return-void
.end method

.method public handleEndOfStream()V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;->handleEndOfStream(J)V

    :cond_0
    return-void
.end method

.method public hasPendingData()Z
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->getSubmittedFrames()J

    move-result-wide v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;->getPlaybackHeadPosition()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->overrideHasPendingData()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->initialize(I)I

    move-result v0

    return v0
.end method

.method public initialize(I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/audio/AudioTrack$InitializationException;
        }
    .end annotation

    const/4 v6, 0x1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    if-nez p1, :cond_2

    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->streamType:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->targetEncoding:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferSize:I

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->checkAudioTrackInitialized()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p1

    sget-boolean v0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->enablePreV21AudioSessionWorkaround:Z

    if-eqz v0, :cond_1

    sget v0, Lorg/telegram/messenger/exoplayer/util/Util;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    const/16 v2, 0xfa0

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x2

    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->streamType:I

    const/4 v6, 0x0

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->needsPassthroughWorkarounds()Z

    move-result v6

    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->setAudioTrackVolume()V

    return p1

    :cond_2
    new-instance v0, Landroid/media/AudioTrack;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->streamType:I

    iget v2, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->sampleRate:I

    iget v3, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->channelConfig:I

    iget v4, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->targetEncoding:I

    iget v5, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferSize:I

    move v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPassthroughSupported(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioCapabilities:Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioCapabilities:Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->getEncodingForMimeType(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/audio/AudioCapabilities;->supportsEncoding(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->resetSyncParams()V

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->resumeSystemTimeUs:J

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->reset()V

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->releaseKeepSessionIdAudioTrack()V

    return-void
.end method

.method public reset()V
    .locals 7

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->submittedPcmBytes:J

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->submittedEncodedFrames:J

    iput v3, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->framesPerEncodedSample:I

    iput v3, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->bufferBytesRemaining:I

    iput v3, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->startMediaTimeState:I

    iput-wide v4, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->latencyUs:J

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->resetSyncParams()V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iput-object v6, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrack:Landroid/media/AudioTrack;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v2, v6, v3}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;->reconfigure(Landroid/media/AudioTrack;Z)V

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->releasingConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    new-instance v2, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$1;

    invoke-direct {v2, p0, v1}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$1;-><init>(Lorg/telegram/messenger/exoplayer/audio/AudioTrack;Landroid/media/AudioTrack;)V

    invoke-virtual {v2}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$1;->start()V

    :cond_1
    return-void
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->audioTrackUtil:Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack$AudioTrackUtil;->setPlaybackParameters(Landroid/media/PlaybackParams;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    iget v0, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->volume:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->volume:F

    invoke-direct {p0}, Lorg/telegram/messenger/exoplayer/audio/AudioTrack;->setAudioTrackVolume()V

    :cond_0
    return-void
.end method
