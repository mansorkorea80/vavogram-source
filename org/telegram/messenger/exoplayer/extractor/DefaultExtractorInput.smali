.class public final Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;
.super Ljava/lang/Object;
.source "DefaultExtractorInput.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;


# static fields
.field private static final SCRATCH_SPACE:[B


# instance fields
.field private final dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

.field private peekBuffer:[B

.field private peekBufferLength:I

.field private peekBufferPosition:I

.field private position:J

.field private final streamLength:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    sput-object v0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iput-wide p2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->position:J

    iput-wide p4, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->streamLength:J

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    return-void
.end method

.method private commitBytesRead(I)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->position:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->position:J

    :cond_0
    return-void
.end method

.method private ensureSpaceForPeek(I)V
    .locals 3

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int v0, v1, p1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    :cond_0
    return-void
.end method

.method private readFromDataSource([BIIIZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/lang/InterruptedException;

    invoke-direct {v1}, Ljava/lang/InterruptedException;-><init>()V

    throw v1

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->dataSource:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    add-int v3, p2, p4

    sub-int v4, p3, p4

    invoke-interface {v2, p1, v3, v4}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->read([BII)I

    move-result v0

    if-ne v0, v1, :cond_2

    if-nez p4, :cond_1

    if-eqz p5, :cond_1

    :goto_0
    return v1

    :cond_1
    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    :cond_2
    add-int v1, p4, v0

    goto :goto_0
.end method

.method private readFromPeekBuffer([BII)I
    .locals 3

    const/4 v1, 0x0

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    invoke-static {v2, v1, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    goto :goto_0
.end method

.method private skipFromPeekBuffer(I)I
    .locals 2

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->updatePeekBuffer(I)V

    return v0
.end method

.method private updatePeekBuffer(I)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    iput v3, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    invoke-static {v0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public advancePeekPosition(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    return-void
.end method

.method public advancePeekPosition(IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->ensureSpaceForPeek(I)V

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    sub-int v1, p1, v4

    add-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBufferLength:I

    :cond_0
    if-ge v4, p1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    move-object v0, p0

    move v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLength()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->streamLength:J

    return-wide v0
.end method

.method public getPeekPosition()J
    .locals 4

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->position:J

    iget v2, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->position:J

    return-wide v0
.end method

.method public peekFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekFully([BIIZ)Z

    return-void
.end method

.method public peekFully([BIIZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0, p3, p4}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->advancePeekPosition(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBuffer:[B

    iget v1, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    sub-int/2addr v1, p3

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v6

    if-nez v6, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v6

    :cond_0
    invoke-direct {p0, v6}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    return v6
.end method

.method public readFully([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->readFully([BIIZ)Z

    return-void
.end method

.method public readFully([BIIZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v6, -0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->readFromPeekBuffer([BII)I

    move-result v4

    :goto_0
    if-ge v4, p3, :cond_0

    if-eq v4, v6, :cond_0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    if-eq v4, v6, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public resetPeekPosition()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->peekBufferPosition:I

    return-void
.end method

.method public skip(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v6

    if-nez v6, :cond_0

    sget-object v1, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    array-length v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v6

    :cond_0
    invoke-direct {p0, v6}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    return v6
.end method

.method public skipFully(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->skipFully(IZ)Z

    return-void
.end method

.method public skipFully(IZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v6, -0x1

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->skipFromPeekBuffer(I)I

    move-result v4

    :goto_0
    if-ge v4, p1, :cond_0

    if-eq v4, v6, :cond_0

    sget-object v1, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    neg-int v2, v4

    sget-object v0, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->SCRATCH_SPACE:[B

    array-length v0, v0

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->readFromDataSource([BIIIZ)I

    move-result v4

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Lorg/telegram/messenger/exoplayer/extractor/DefaultExtractorInput;->commitBytesRead(I)V

    if-eq v4, v6, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
