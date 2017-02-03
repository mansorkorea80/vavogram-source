.class public final Lcom/coremedia/iso/IsoTypeReader;
.super Ljava/lang/Object;
.source "IsoTypeReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byte2int(B)I
    .locals 0

    if-gez p0, :cond_0

    add-int/lit16 p0, p0, 0x100

    :cond_0
    return p0
.end method

.method public static read4cc(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x4

    new-array v0, v2, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "ISO-8859-1"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static readFixedPoint0230(Ljava/nio/ByteBuffer;)D
    .locals 6

    const/4 v2, 0x4

    new-array v0, v2, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x100

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-double v2, v1

    const-wide/high16 v4, 0x41d0

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public static readFixedPoint1616(Ljava/nio/ByteBuffer;)D
    .locals 6

    const/4 v2, 0x4

    new-array v0, v2, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v3, -0x100

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-double v2, v1

    const-wide/high16 v4, 0x40f0

    div-double/2addr v2, v4

    return-wide v2
.end method

.method public static readFixedPoint88(Ljava/nio/ByteBuffer;)F
    .locals 4

    const/4 v2, 0x2

    new-array v0, v2, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v2, v1

    int-to-short v1, v2

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v1

    int-to-short v1, v2

    int-to-float v2, v1

    const/high16 v3, 0x4380

    div-float/2addr v2, v3

    return v2
.end method

.method public static readIso639(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x3

    if-lt v2, v4, :cond_0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    rsub-int/lit8 v4, v2, 0x2

    mul-int/lit8 v4, v4, 0x5

    shr-int v4, v0, v4

    and-int/lit8 v1, v4, 0x1f

    add-int/lit8 v4, v1, 0x60

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/coremedia/iso/Utf8;->convert([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method public static readString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .locals 2

    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/coremedia/iso/Utf8;->convert([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static readUInt16(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/coremedia/iso/IsoTypeReader;->byte2int(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/coremedia/iso/IsoTypeReader;->byte2int(B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static readUInt16BE(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/coremedia/iso/IsoTypeReader;->byte2int(B)I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/coremedia/iso/IsoTypeReader;->byte2int(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    return v0
.end method

.method public static readUInt24(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Lcom/coremedia/iso/IsoTypeReader;->byte2int(B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static readUInt32(Ljava/nio/ByteBuffer;)J
    .locals 4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    int-to-long v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide v2, 0x100000000L

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public static readUInt32BE(Ljava/nio/ByteBuffer;)J
    .locals 12

    invoke-static {p0}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v8

    int-to-long v0, v8

    invoke-static {p0}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v8

    int-to-long v2, v8

    invoke-static {p0}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v8

    int-to-long v4, v8

    invoke-static {p0}, Lcom/coremedia/iso/IsoTypeReader;->readUInt8(Ljava/nio/ByteBuffer;)I

    move-result v8

    int-to-long v6, v8

    const/16 v8, 0x18

    shl-long v8, v6, v8

    const/16 v10, 0x10

    shl-long v10, v4, v10

    add-long/2addr v8, v10

    const/16 v10, 0x8

    shl-long v10, v2, v10

    add-long/2addr v8, v10

    const/4 v10, 0x0

    shl-long v10, v0, v10

    add-long/2addr v8, v10

    return-wide v8
.end method

.method public static readUInt48(Ljava/nio/ByteBuffer;)J
    .locals 5

    invoke-static {p0}, Lcom/coremedia/iso/IsoTypeReader;->readUInt16(Ljava/nio/ByteBuffer;)I

    move-result v2

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long v0, v2, v4

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "I don\'t know how to deal with UInt64! long is not sufficient and I don\'t want to use BigInt"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {p0}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static readUInt64(Ljava/nio/ByteBuffer;)J
    .locals 5

    const-wide/16 v0, 0x0

    invoke-static {p0}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "I don\'t know how to deal with UInt64! long is not sufficient and I don\'t want to use BigInt"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-static {p0}, Lcom/coremedia/iso/IsoTypeReader;->readUInt32(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static readUInt8(Ljava/nio/ByteBuffer;)I
    .locals 1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Lcom/coremedia/iso/IsoTypeReader;->byte2int(B)I

    move-result v0

    return v0
.end method
