.class final Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;
.super Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader;
.source "ScriptTagPayloadReader.java"


# static fields
.field private static final AMF_TYPE_BOOLEAN:I = 0x1

.field private static final AMF_TYPE_DATE:I = 0xb

.field private static final AMF_TYPE_ECMA_ARRAY:I = 0x8

.field private static final AMF_TYPE_END_MARKER:I = 0x9

.field private static final AMF_TYPE_NUMBER:I = 0x0

.field private static final AMF_TYPE_OBJECT:I = 0x3

.field private static final AMF_TYPE_STRICT_ARRAY:I = 0xa

.field private static final AMF_TYPE_STRING:I = 0x2

.field private static final KEY_DURATION:Ljava/lang/String; = "duration"

.field private static final NAME_METADATA:Ljava/lang/String; = "onMetaData"


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader;-><init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    return-void
.end method

.method private static readAmfBoolean(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readAmfData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Ljava/lang/Object;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfDouble(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfBoolean(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfObject(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfEcmaArray(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfStrictArray(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfDate(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/util/Date;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private static readAmfDate(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/util/Date;
    .locals 4

    new-instance v0, Ljava/util/Date;

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfDouble(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    double-to-long v2, v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    return-object v0
.end method

.method private static readAmfDouble(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/lang/Double;
    .locals 2

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method private static readAmfEcmaArray(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I

    move-result v4

    invoke-static {p0, v4}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static readAmfObject(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_0
    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, v2}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static readAmfStrictArray(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-static {p0}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I

    move-result v3

    invoke-static {p0, v3}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private static readAmfString(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->getPosition()I

    move-result v0

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    invoke-direct {v2, v3, v0, v1}, Ljava/lang/String;-><init>([BII)V

    return-object v2
.end method

.method private static readAmfType(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I
    .locals 1

    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    return v0
.end method


# virtual methods
.method protected parseHeader(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected parsePayload(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    new-instance v6, Lorg/telegram/messenger/exoplayer/ParserException;

    invoke-direct {v6}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>()V

    throw v6

    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfString(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v6, "onMetaData"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfType(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    new-instance v6, Lorg/telegram/messenger/exoplayer/ParserException;

    invoke-direct {v6}, Lorg/telegram/messenger/exoplayer/ParserException;-><init>()V

    throw v6

    :cond_3
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->readAmfEcmaArray(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Ljava/util/HashMap;

    move-result-object v2

    const-string/jumbo v6, "duration"

    invoke-interface {v2, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "duration"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmpl-double v6, v0, v6

    if-lez v6, :cond_1

    const-wide v6, 0x412e848000000000L

    mul-double/2addr v6, v0

    double-to-long v6, v6

    invoke-virtual {p0, v6, v7}, Lorg/telegram/messenger/exoplayer/extractor/flv/ScriptTagPayloadReader;->setDurationUs(J)V

    goto :goto_0
.end method

.method public seek()V
    .locals 0

    return-void
.end method
