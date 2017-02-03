.class final Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;
.super Ljava/lang/Object;
.source "XingSeeker.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/mp3/Mp3Extractor$Seeker;


# instance fields
.field private final durationUs:J

.field private final firstFramePosition:J

.field private final headerSize:I

.field private final inputLength:J

.field private final sizeBytes:J

.field private final tableOfContents:[J


# direct methods
.method private constructor <init>(JJJ)V
    .locals 13

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;-><init>(JJJ[JJI)V

    return-void
.end method

.method private constructor <init>(JJJ[JJI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    iput-wide p3, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    iput-wide p5, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->inputLength:J

    iput-object p7, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    iput-wide p8, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    iput p10, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->headerSize:I

    return-void
.end method

.method public static create(Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;JJ)Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;
    .locals 22

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->samplesPerFrame:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->sampleRate:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->frameSize:I

    int-to-long v2, v2

    add-long v14, p2, v2

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readInt()I

    move-result v16

    and-int/lit8 v2, v16, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v17

    if-nez v17, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_1
    move/from16 v0, v17

    int-to-long v2, v0

    move/from16 v0, v20

    int-to-long v4, v0

    const-wide/32 v8, 0xf4240

    mul-long/2addr v4, v8

    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static/range {v2 .. v7}, Lorg/telegram/messenger/exoplayer/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v6

    and-int/lit8 v2, v16, 0x6

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    new-instance v3, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;

    move-wide v4, v14

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;-><init>(JJJ)V

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    int-to-long v11, v2

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    const/16 v2, 0x63

    new-array v10, v2, [J

    const/16 v18, 0x0

    :goto_1
    const/16 v2, 0x63

    move/from16 v0, v18

    if-ge v0, v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    int-to-long v2, v2

    aput-wide v2, v10, v18

    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_3
    new-instance v3, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/exoplayer/util/MpegAudioHeader;->frameSize:I

    move-wide v4, v14

    move-wide/from16 v8, p4

    invoke-direct/range {v3 .. v13}, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;-><init>(JJJ[JJI)V

    goto :goto_0
.end method

.method private getTimeUsForTocPosition(I)J
    .locals 4

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public getDurationUs()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    return-wide v0
.end method

.method public getPosition(J)J
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v9

    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    :goto_0
    return-wide v12

    :cond_0
    move-wide/from16 v0, p1

    long-to-float v9, v0

    const/high16 v12, 0x42c8

    mul-float/2addr v9, v12

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->durationUs:J

    long-to-float v12, v12

    div-float v8, v9, v12

    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gtz v9, :cond_1

    const/4 v5, 0x0

    :goto_1
    const-wide/high16 v12, 0x3f70

    float-to-double v14, v5

    mul-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    long-to-double v14, v14

    mul-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    add-long v10, v12, v14

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->inputLength:J

    const-wide/16 v14, -0x1

    cmp-long v9, v12, v14

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->inputLength:J

    const-wide/16 v14, 0x1

    sub-long v6, v12, v14

    :goto_2
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    goto :goto_0

    :cond_1
    const/high16 v9, 0x42c8

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_2

    const/high16 v5, 0x4380

    goto :goto_1

    :cond_2
    float-to-int v2, v8

    if-nez v2, :cond_3

    const/4 v3, 0x0

    :goto_3
    const/16 v9, 0x63

    if-ge v2, v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    aget-wide v12, v9, v2

    long-to-float v4, v12

    :goto_4
    sub-float v9, v4, v3

    int-to-float v12, v2

    sub-float v12, v8, v12

    mul-float/2addr v9, v12

    add-float v5, v3, v9

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    add-int/lit8 v12, v2, -0x1

    aget-wide v12, v9, v12

    long-to-float v3, v12

    goto :goto_3

    :cond_4
    const/high16 v4, 0x4380

    goto :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->headerSize:I

    int-to-long v14, v9

    sub-long/2addr v12, v14

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    add-long/2addr v12, v14

    const-wide/16 v14, 0x1

    sub-long v6, v12, v14

    goto :goto_2
.end method

.method public getTimeUs(J)J
    .locals 23

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->isSeekable()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    move-wide/from16 v18, v0

    cmp-long v15, p1, v18

    if-gez v15, :cond_1

    :cond_0
    const-wide/16 v18, 0x0

    :goto_0
    return-wide v18

    :cond_1
    const-wide/high16 v18, 0x4070

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->firstFramePosition:J

    move-wide/from16 v20, v0

    sub-long v20, p1, v20

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->sizeBytes:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v8, v18, v20

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    double-to-long v0, v8

    move-wide/from16 v18, v0

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-wide/from16 v0, v18

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v15, v0, v1, v2, v3}, Lorg/telegram/messenger/exoplayer/util/Util;->binarySearchFloor([JJZZ)I

    move-result v15

    add-int/lit8 v14, v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->getTimeUsForTocPosition(I)J

    move-result-wide v12

    if-nez v14, :cond_2

    const-wide/16 v10, 0x0

    :goto_1
    const/16 v15, 0x63

    if-ne v14, v15, :cond_3

    const-wide/16 v4, 0x100

    :goto_2
    add-int/lit8 v15, v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->getTimeUsForTocPosition(I)J

    move-result-wide v6

    cmp-long v15, v4, v10

    if-nez v15, :cond_4

    const-wide/16 v16, 0x0

    :goto_3
    add-long v18, v12, v16

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    add-int/lit8 v18, v14, -0x1

    aget-wide v10, v15, v18

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    aget-wide v4, v15, v14

    goto :goto_2

    :cond_4
    sub-long v18, v6, v12

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    long-to-double v0, v10

    move-wide/from16 v20, v0

    sub-double v20, v8, v20

    mul-double v18, v18, v20

    sub-long v20, v4, v10

    move-wide/from16 v0, v20

    long-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-long v0, v0

    move-wide/from16 v16, v0

    goto :goto_3
.end method

.method public isSeekable()Z
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp3/XingSeeker;->tableOfContents:[J

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
