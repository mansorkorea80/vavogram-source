.class Lcom/googlecode/mp4parser/authoring/tracks/SMPTETTTrackImpl$1;
.super Ljava/lang/Object;
.source "SMPTETTTrackImpl.java"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/Sample;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/mp4parser/authoring/tracks/SMPTETTTrackImpl;-><init>([Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/mp4parser/authoring/tracks/SMPTETTTrackImpl;

.field private final synthetic val$finalXml:Ljava/lang/String;

.field private final synthetic val$pix:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/SMPTETTTrackImpl;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/SMPTETTTrackImpl$1;->this$0:Lcom/googlecode/mp4parser/authoring/tracks/SMPTETTTrackImpl;

    iput-object p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/SMPTETTTrackImpl$1;->val$finalXml:Ljava/lang/String;

    iput-object p3, p0, Lcom/googlecode/mp4parser/authoring/tracks/SMPTETTTrackImpl$1;->val$pix:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-static {v0}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/googlecode/mp4parser/authoring/tracks/SMPTETTTrackImpl$1;->writeTo(Ljava/nio/channels/WritableByteChannel;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getSize()J
    .locals 6

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/SMPTETTTrackImpl$1;->val$finalXml:Ljava/lang/String;

    invoke-static {v1}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1

    int-to-long v2, v1

    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/SMPTETTTrackImpl$1;->val$pix:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method public writeTo(Ljava/nio/channels/WritableByteChannel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/SMPTETTTrackImpl$1;->val$finalXml:Ljava/lang/String;

    invoke-static {v4}, Lcom/coremedia/iso/Utf8;->convert(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-object v4, p0, Lcom/googlecode/mp4parser/authoring/tracks/SMPTETTTrackImpl$1;->val$pix:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x1fa0

    new-array v0, v5, [B

    const/4 v3, 0x0

    :goto_0
    const/4 v5, -0x1

    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-eq v5, v3, :cond_0

    const/4 v5, 0x0

    invoke-static {v0, v5, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_0
.end method
