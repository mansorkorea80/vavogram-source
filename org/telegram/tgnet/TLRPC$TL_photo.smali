.class public Lorg/telegram/tgnet/TLRPC$TL_photo;
.super Lorg/telegram/tgnet/TLRPC$Photo;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_photo"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, -0x6d7722d7

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Photo;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->flags:I

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->has_stickers:Z

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->id:J

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v8

    iput-wide v8, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->date:I

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_1

    if-eqz p2, :cond_2

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "wrong Vector magic, got %x"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v3

    if-nez v3, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 4

    sget v2, Lorg/telegram/tgnet/TLRPC$TL_photo;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-boolean v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->has_stickers:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->flags:I

    or-int/lit8 v2, v2, 0x1

    :goto_0
    iput v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->flags:I

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->flags:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$PhotoSize;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_photo;->flags:I

    and-int/lit8 v2, v2, -0x2

    goto :goto_0

    :cond_1
    return-void
.end method
