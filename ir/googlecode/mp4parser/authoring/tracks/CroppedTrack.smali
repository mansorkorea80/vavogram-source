.class public Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "CroppedTrack.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private fromSample:I

.field origTrack:Lcom/googlecode/mp4parser/authoring/Track;

.field private toSample:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/Track;JJ)V
    .locals 4

    const-wide/32 v2, 0x7fffffff

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "crop("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/Track;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    sget-boolean v0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    cmp-long v0, p2, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    cmp-long v0, p4, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    long-to-int v0, p2

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    long-to-int v0, p4

    iput v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->toSample:I

    return-void
.end method

.method static getCompositionTimeEntries(Ljava/util/List;JJ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const-wide/16 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v6, v0

    cmp-long v5, v6, p1

    if-lez v5, :cond_0

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v6, v0

    cmp-long v5, v6, p3

    if-ltz v5, :cond_1

    new-instance v5, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    sub-long v6, p3, p1

    long-to-int v6, v6

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v4

    :cond_0
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v0

    sub-long/2addr v6, p1

    long-to-int v6, v6

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    :goto_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v6, v0

    cmp-long v5, v6, p3

    if-ltz v5, :cond_3

    :cond_2
    new-instance v5, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;

    sub-long v6, p3, v0

    long-to-int v6, v6

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getOffset()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;-><init>(II)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;->getCount()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v0, v6

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static getDecodingTimeEntries(Ljava/util/List;JJ)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;JJ)",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    const-wide/16 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v6

    add-long/2addr v6, v0

    cmp-long v5, v6, p1

    if-lez v5, :cond_0

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v6

    add-long/2addr v6, v0

    cmp-long v5, v6, p3

    if-ltz v5, :cond_1

    new-instance v5, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    sub-long v6, p3, p1

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v4

    :cond_0
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v6

    add-long/2addr v6, v0

    sub-long/2addr v6, p1

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v6

    add-long/2addr v0, v6

    :goto_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v6

    add-long/2addr v6, v0

    cmp-long v5, v6, p3

    if-ltz v5, :cond_3

    :cond_2
    new-instance v5, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    sub-long v6, p3, v0

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->close()V

    return-void
.end method

.method public getCompositionTimeEntries()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getCompositionTimeEntries()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    int-to-long v2, v1

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->toSample:I

    int-to-long v4, v1

    invoke-static {v0, v2, v3, v4, v5}, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->getCompositionTimeEntries(Ljava/util/List;JJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getHandler()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDependencies()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->toSample:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSampleDurations()[J
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->toSample:I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    sub-int/2addr v1, v2

    new-array v0, v1, [J

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/Track;->getSampleDurations()[J

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSamples()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/authoring/Sample;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSamples()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    iget v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->toSample:I

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getSyncSamples()[J
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v3

    const/4 v0, 0x0

    array-length v1, v3

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    aget-wide v6, v3, v0

    iget v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    :cond_0
    :goto_1
    if-lez v1, :cond_1

    iget v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->toSample:I

    int-to-long v6, v5

    add-int/lit8 v5, v1, -0x1

    aget-wide v8, v3, v5

    cmp-long v5, v6, v8

    if-ltz v5, :cond_3

    :cond_1
    iget-object v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v5}, Lcom/googlecode/mp4parser/authoring/Track;->getSyncSamples()[J

    move-result-object v5

    invoke-static {v5, v0, v1}, Ljava/util/Arrays;->copyOfRange([JII)[J

    move-result-object v4

    const/4 v2, 0x0

    :goto_2
    array-length v5, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v5, :cond_4

    :goto_3
    monitor-exit p0

    return-object v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    :try_start_1
    aget-wide v6, v4, v2

    iget v5, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->fromSample:I

    int-to-long v8, v5

    sub-long/2addr v6, v8

    aput-wide v6, v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/CroppedTrack;->origTrack:Lcom/googlecode/mp4parser/authoring/Track;

    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/Track;->getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    move-result-object v0

    return-object v0
.end method
