.class public Lorg/telegram/messenger/audioinfo/mp3/MP3Info;
.super Lorg/telegram/messenger/audioinfo/AudioInfo;
.source "MP3Info.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;
    }
.end annotation


# static fields
.field static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;,
            Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;
        }
    .end annotation

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;-><init>(Ljava/io/InputStream;JLjava/util/logging/Level;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JLjava/util/logging/Level;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/audioinfo/mp3/ID3v2Exception;,
            Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;
        }
    .end annotation

    const-wide/16 v8, 0x80

    invoke-direct {p0}, Lorg/telegram/messenger/audioinfo/AudioInfo;-><init>()V

    const-string/jumbo v3, "MP3"

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->brand:Ljava/lang/String;

    const-string/jumbo v3, "0"

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->version:Ljava/lang/String;

    new-instance v0, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;

    invoke-direct {v0, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->isID3v2StartPosition(Ljava/io/InputStream;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;

    invoke-direct {v2, v0, p4}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;-><init>(Ljava/io/InputStream;Ljava/util/logging/Level;)V

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getAlbum()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->album:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getAlbumArtist()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->albumArtist:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getArtist()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->artist:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getComment()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getCover()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->cover:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getSmallCover()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->smallCover:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->isCompilation()Z

    move-result v3

    iput-boolean v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->compilation:Z

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getComposer()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->composer:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getCopyright()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->copyright:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getDisc()S

    move-result v3

    iput-short v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->disc:S

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getDiscs()S

    move-result v3

    iput-short v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->discs:S

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getDuration()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->duration:J

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getGenre()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->genre:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getGrouping()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->grouping:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getLyrics()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->lyrics:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->title:Ljava/lang/String;

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getTrack()S

    move-result v3

    iput-short v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->track:S

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getTracks()S

    move-result v3

    iput-short v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->tracks:S

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v2Info;->getYear()S

    move-result v3

    iput-short v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->year:S

    :cond_0
    iget-wide v4, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->duration:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    iget-wide v4, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->duration:J

    const-wide/32 v6, 0x36ee80

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    :cond_1
    :try_start_0
    new-instance v3, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$1;

    invoke-direct {v3, p0, p2, p3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$1;-><init>(Lorg/telegram/messenger/audioinfo/mp3/MP3Info;J)V

    invoke-virtual {p0, v0, p2, p3, v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->calculateDuration(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;JLorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->duration:J
    :try_end_0
    .catch Lorg/telegram/messenger/audioinfo/mp3/MP3Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->title:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->album:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->artist:Ljava/lang/String;

    if-nez v3, :cond_a

    :cond_3
    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->getPosition()J

    move-result-wide v4

    sub-long v6, p2, v8

    cmp-long v3, v4, v6

    if-gtz v3, :cond_a

    sub-long v4, p2, v8

    invoke-virtual {v0}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->skipFully(J)V

    invoke-static {p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->isID3v1StartPosition(Ljava/io/InputStream;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-instance v2, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;

    invoke-direct {v2, p1}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;-><init>(Ljava/io/InputStream;)V

    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->album:Ljava/lang/String;

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->getAlbum()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->album:Ljava/lang/String;

    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->artist:Ljava/lang/String;

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->getArtist()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->artist:Ljava/lang/String;

    :cond_5
    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->comment:Ljava/lang/String;

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->getComment()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->comment:Ljava/lang/String;

    :cond_6
    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->genre:Ljava/lang/String;

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->getGenre()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->genre:Ljava/lang/String;

    :cond_7
    iget-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->title:Ljava/lang/String;

    if-nez v3, :cond_8

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->title:Ljava/lang/String;

    :cond_8
    iget-short v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->track:S

    if-nez v3, :cond_9

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->getTrack()S

    move-result v3

    iput-short v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->track:S

    :cond_9
    iget-short v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->year:S

    if-nez v3, :cond_a

    invoke-virtual {v2}, Lorg/telegram/messenger/audioinfo/mp3/ID3v1Info;->getYear()S

    move-result v3

    iput-short v3, p0, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->year:S

    :cond_a
    return-void

    :catch_0
    move-exception v1

    sget-object v3, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->LOGGER:Ljava/util/logging/Logger;

    invoke-virtual {v3, p4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->LOGGER:Ljava/util/logging/Logger;

    const-string/jumbo v4, "Could not determine MP3 duration"

    invoke-virtual {v3, p4, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method calculateDuration(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;JLorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;)J
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->readFirstFrame(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;)Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getNumberOfFrames()I

    move-result v14

    if-lez v14, :cond_0

    invoke-virtual {v9}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    move-result-object v16

    invoke-virtual {v9}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getSize()I

    move-result v17

    mul-int v17, v17, v14

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getTotalDuration(J)J

    move-result-wide v16

    :goto_0
    return-wide v16

    :cond_0
    const/4 v14, 0x1

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->getPosition()J

    move-result-wide v16

    invoke-virtual {v9}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getSize()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v10, v16, v18

    invoke-virtual {v9}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getSize()I

    move-result v16

    move/from16 v0, v16

    int-to-long v12, v0

    invoke-virtual {v9}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getBitrate()I

    move-result v8

    int-to-long v6, v8

    const/4 v15, 0x0

    const/16 v16, 0x2710

    invoke-virtual {v9}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getDuration()I

    move-result v17

    div-int v5, v16, v17

    :goto_1
    if-ne v14, v5, :cond_1

    if-nez v15, :cond_1

    const-wide/16 v16, 0x0

    cmp-long v16, p2, v16

    if-lez v16, :cond_1

    invoke-virtual {v9}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    move-result-object v16

    sub-long v18, p2, v10

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getTotalDuration(J)J

    move-result-wide v16

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v9}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info;->readNextFrame(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;)Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;

    move-result-object v9

    if-nez v9, :cond_2

    const-wide/16 v16, 0x3e8

    mul-long v16, v16, v12

    int-to-long v0, v14

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    const-wide/16 v18, 0x8

    mul-long v16, v16, v18

    div-long v16, v16, v6

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getBitrate()I

    move-result v4

    if-eq v4, v8, :cond_3

    const/4 v15, 0x1

    :cond_3
    int-to-long v0, v4

    move-wide/from16 v16, v0

    add-long v6, v6, v16

    invoke-virtual {v9}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getSize()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v12, v12, v16

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    new-instance v16, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;

    const-string/jumbo v17, "No audio frame"

    invoke-direct/range {v16 .. v17}, Lorg/telegram/messenger/audioinfo/mp3/MP3Exception;-><init>(Ljava/lang/String;)V

    throw v16
.end method

.method readFirstFrame(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;)Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v17

    if-eqz v17, :cond_2

    const/4 v5, -0x1

    :goto_0
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_0

    const/16 v17, 0xff

    move/from16 v0, v17

    if-ne v4, v0, :cond_6

    and-int/lit16 v0, v5, 0xe0

    move/from16 v17, v0

    const/16 v18, 0xe0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/16 v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->mark(I)V

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v17

    if-eqz v17, :cond_3

    const/4 v6, -0x1

    :goto_1
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_4

    :cond_0
    :goto_2
    const/4 v9, 0x0

    :cond_1
    :goto_3
    return-object v9

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v5

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v6

    goto :goto_1

    :cond_4
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/4 v7, -0x1

    :goto_4
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_0

    const/4 v11, 0x0

    :try_start_0
    new-instance v12, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-direct {v12, v5, v6, v7}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;-><init>(III)V
    :try_end_0
    .catch Lorg/telegram/messenger/audioinfo/mp3/MP3Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v11, v12

    :goto_5
    if-eqz v11, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->reset()V

    invoke-virtual {v11}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getFrameSize()I

    move-result v17

    add-int/lit8 v17, v17, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->mark(I)V

    invoke-virtual {v11}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getFrameSize()I

    move-result v17

    move/from16 v0, v17

    new-array v10, v0, [B

    const/16 v17, 0x0

    const/16 v18, -0x1

    aput-byte v18, v10, v17

    const/16 v17, 0x1

    int-to-byte v0, v5

    move/from16 v18, v0

    aput-byte v18, v10, v17

    const/16 v17, 0x2

    :try_start_1
    array-length v0, v10

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v10, v1, v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->readFully([BII)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_1

    new-instance v9, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;

    invoke-direct {v9, v11, v10}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;-><init>(Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;[B)V

    invoke-virtual {v9}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->isChecksumError()Z

    move-result v17

    if-nez v17, :cond_5

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/4 v13, -0x1

    :goto_6
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v17

    if-eqz v17, :cond_9

    const/4 v14, -0x1

    :goto_7
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_1

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_1

    const/16 v17, 0xff

    move/from16 v0, v17

    if-ne v13, v0, :cond_5

    and-int/lit16 v0, v14, 0xfe

    move/from16 v17, v0

    and-int/lit16 v0, v5, 0xfe

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v17

    if-eqz v17, :cond_a

    const/4 v15, -0x1

    :goto_8
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v17

    if-eqz v17, :cond_b

    const/16 v16, -0x1

    :goto_9
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v15, v0, :cond_1

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    :try_start_2
    new-instance v17, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v0, v14, v15, v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;-><init>(III)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->isCompatible(Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->reset()V

    array-length v0, v10

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x2

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->skipFully(J)V
    :try_end_2
    .catch Lorg/telegram/messenger/audioinfo/mp3/MP3Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v17

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->reset()V

    :cond_6
    move v4, v5

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/4 v5, -0x1

    :goto_a
    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v7

    goto/16 :goto_4

    :catch_1
    move-exception v8

    goto/16 :goto_2

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v13

    goto/16 :goto_6

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v14

    goto/16 :goto_7

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v15

    goto :goto_8

    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v16

    goto :goto_9

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v5

    goto :goto_a

    :catch_2
    move-exception v17

    goto/16 :goto_5
.end method

.method readNextFrame(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;)Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;->getHeader()Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {p1, v9}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->mark(I)V

    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v0, -0x1

    :goto_0
    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v1, -0x1

    :goto_1
    const/4 v9, -0x1

    if-eq v0, v9, :cond_0

    const/4 v9, -0x1

    if-ne v1, v9, :cond_3

    :cond_0
    const/4 v9, 0x0

    :goto_2
    return-object v9

    :cond_1
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v1

    goto :goto_1

    :cond_3
    const/16 v9, 0xff

    if-ne v0, v9, :cond_8

    and-int/lit16 v9, v1, 0xe0

    const/16 v10, 0xe0

    if-ne v9, v10, :cond_8

    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v2, -0x1

    :goto_3
    invoke-interface {p2, p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Info$StopReadCondition;->stopRead(Lorg/telegram/messenger/audioinfo/mp3/MP3Input;)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v3, -0x1

    :goto_4
    const/4 v9, -0x1

    if-eq v2, v9, :cond_4

    const/4 v9, -0x1

    if-ne v3, v9, :cond_7

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v2

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->read()I

    move-result v3

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;

    invoke-direct {v7, v1, v2, v3}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;-><init>(III)V
    :try_end_0
    .catch Lorg/telegram/messenger/audioinfo/mp3/MP3Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v7

    :goto_5
    if-eqz v6, :cond_8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->isCompatible(Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v6}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;->getFrameSize()I

    move-result v9

    new-array v5, v9, [B

    const/4 v9, 0x0

    int-to-byte v10, v0

    aput-byte v10, v5, v9

    const/4 v9, 0x1

    int-to-byte v10, v1

    aput-byte v10, v5, v9

    const/4 v9, 0x2

    int-to-byte v10, v2

    aput-byte v10, v5, v9

    const/4 v9, 0x3

    int-to-byte v10, v3

    aput-byte v10, v5, v9

    const/4 v9, 0x4

    :try_start_1
    array-length v10, v5

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {p1, v5, v9, v10}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->readFully([BII)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v9, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;

    invoke-direct {v9, v6, v5}, Lorg/telegram/messenger/audioinfo/mp3/MP3Frame;-><init>(Lorg/telegram/messenger/audioinfo/mp3/MP3Frame$Header;[B)V

    goto :goto_2

    :catch_0
    move-exception v4

    const/4 v9, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Lorg/telegram/messenger/audioinfo/mp3/MP3Input;->reset()V

    const/4 v9, 0x0

    goto :goto_2

    :catch_1
    move-exception v9

    goto :goto_5
.end method
