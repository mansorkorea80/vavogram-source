.class public final Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;
.super Ljava/lang/Object;
.source "UrlTemplate.java"


# static fields
.field private static final BANDWIDTH:Ljava/lang/String; = "Bandwidth"

.field private static final BANDWIDTH_ID:I = 0x3

.field private static final DEFAULT_FORMAT_TAG:Ljava/lang/String; = "%01d"

.field private static final ESCAPED_DOLLAR:Ljava/lang/String; = "$$"

.field private static final NUMBER:Ljava/lang/String; = "Number"

.field private static final NUMBER_ID:I = 0x2

.field private static final REPRESENTATION:Ljava/lang/String; = "RepresentationID"

.field private static final REPRESENTATION_ID:I = 0x1

.field private static final TIME:Ljava/lang/String; = "Time"

.field private static final TIME_ID:I = 0x4


# instance fields
.field private final identifierCount:I

.field private final identifierFormatTags:[Ljava/lang/String;

.field private final identifiers:[I

.field private final urlPieces:[Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;[I[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;->urlPieces:[Ljava/lang/String;

    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;->identifiers:[I

    iput-object p3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    iput p4, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;->identifierCount:I

    return-void
.end method

.method public static compile(Ljava/lang/String;)Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x5

    new-array v3, v4, [Ljava/lang/String;

    new-array v2, v5, [I

    new-array v1, v5, [Ljava/lang/String;

    invoke-static {p0, v3, v2, v1}, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;->parseTemplate(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)I

    move-result v0

    new-instance v4, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;

    invoke-direct {v4, v3, v2, v1, v0}, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;-><init>([Ljava/lang/String;[I[Ljava/lang/String;I)V

    return-object v4
.end method

.method private static parseTemplate(Ljava/lang/String;[Ljava/lang/String;[I[Ljava/lang/String;)I
    .locals 11

    const/4 v10, 0x0

    const/4 v9, -0x1

    const-string/jumbo v7, ""

    aput-object v7, p1, v10

    const/4 v6, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_9

    const-string/jumbo v7, "$"

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_0

    :cond_0
    if-eq v0, v6, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v4

    move v6, v0

    goto :goto_0

    :cond_1
    const-string/jumbo v7, "$$"

    invoke-virtual {p0, v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "$"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v4

    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_2
    const-string/jumbo v7, "$"

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "RepresentationID"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    aput v7, p2, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    const-string/jumbo v7, ""

    aput-object v7, p1, v4

    add-int/lit8 v6, v5, 0x1

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v7, "%0"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v1, "%01d"

    if-eq v2, v9, :cond_5

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "d"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "d"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_5
    const-string/jumbo v7, "Number"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x2

    aput v7, p2, v4

    :goto_2
    aput-object v1, p3, v4

    goto :goto_1

    :cond_6
    const-string/jumbo v7, "Bandwidth"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x3

    aput v7, p2, v4

    goto :goto_2

    :cond_7
    const-string/jumbo v7, "Time"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x4

    aput v7, p2, v4

    goto :goto_2

    :cond_8
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid template: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_9
    return v4
.end method


# virtual methods
.method public buildUri(Ljava/lang/String;IIJ)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;->identifierCount:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;->urlPieces:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;->identifiers:[I

    aget v2, v2, v1

    if-ne v2, v6, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;->identifiers:[I

    aget v2, v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    aget-object v3, v3, v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;->identifiers:[I

    aget v2, v2, v1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    aget-object v3, v3, v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;->identifiers:[I

    aget v2, v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;->identifierFormatTags:[Ljava/lang/String;

    aget-object v3, v3, v1

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;->urlPieces:[Ljava/lang/String;

    iget v3, p0, Lorg/telegram/messenger/exoplayer/dash/mpd/UrlTemplate;->identifierCount:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
