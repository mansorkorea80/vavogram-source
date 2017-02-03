.class public Lcom/mp4parser/iso14496/part30/WebVTTTrack;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "WebVTTTrack.java"


# instance fields
.field sampleEntry:Lcom/mp4parser/iso14496/part30/WebVTTSampleEntry;

.field samples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation
.end field

.field subs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/DataSource;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mp4parser/iso14496/part30/WebVTTTrack;->samples:Ljava/util/List;

    new-instance v4, Lcom/mp4parser/iso14496/part30/WebVTTSampleEntry;

    invoke-direct {v4}, Lcom/mp4parser/iso14496/part30/WebVTTSampleEntry;-><init>()V

    iput-object v4, p0, Lcom/mp4parser/iso14496/part30/WebVTTTrack;->sampleEntry:Lcom/mp4parser/iso14496/part30/WebVTTSampleEntry;

    iget-object v4, p0, Lcom/mp4parser/iso14496/part30/WebVTTTrack;->sampleEntry:Lcom/mp4parser/iso14496/part30/WebVTTSampleEntry;

    new-instance v5, Lcom/mp4parser/iso14496/part30/WebVTTConfigurationBox;

    invoke-direct {v5}, Lcom/mp4parser/iso14496/part30/WebVTTConfigurationBox;-><init>()V

    invoke-virtual {v4, v5}, Lcom/mp4parser/iso14496/part30/WebVTTSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    iget-object v4, p0, Lcom/mp4parser/iso14496/part30/WebVTTTrack;->sampleEntry:Lcom/mp4parser/iso14496/part30/WebVTTSampleEntry;

    new-instance v5, Lcom/mp4parser/iso14496/part30/WebVTTSourceLabelBox;

    invoke-direct {v5}, Lcom/mp4parser/iso14496/part30/WebVTTSourceLabelBox;-><init>()V

    invoke-virtual {v4, v5}, Lcom/mp4parser/iso14496/part30/WebVTTSampleEntry;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    const-wide/16 v4, 0x0

    invoke-interface {p1}, Lcom/googlecode/mp4parser/DataSource;->size()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v6

    int-to-long v6, v6

    invoke-interface {p1, v4, v5, v6, v7}, Lcom/googlecode/mp4parser/DataSource;->map(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1}, Lcom/googlecode/mp4parser/DataSource;->size()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v4

    new-array v2, v4, [B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/coremedia/iso/Utf8;->convert([B)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "\\r?\\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mp4parser/iso14496/part30/WebVTTTrack;->subs:[Ljava/lang/String;

    const-string/jumbo v1, ""

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/mp4parser/iso14496/part30/WebVTTTrack;->subs:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_2

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/mp4parser/iso14496/part30/WebVTTTrack;->subs:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_4

    :cond_1
    return-void

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/mp4parser/iso14496/part30/WebVTTTrack;->subs:[Ljava/lang/String;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/mp4parser/iso14496/part30/WebVTTTrack;->subs:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/mp4parser/iso14496/part30/WebVTTTrack;->subs:[Ljava/lang/String;

    add-int/lit8 v5, v3, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/mp4parser/iso14496/part30/WebVTTTrack;->subs:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDurations()[J
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
