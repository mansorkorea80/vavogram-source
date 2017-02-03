.class public final Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttParser;
.super Ljava/lang/Object;
.source "WebvttParser.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/text/SubtitleParser;


# instance fields
.field private final cueParser:Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCueParser;

.field private final parsableWebvttData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

.field private final webvttCueBuilder:Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCueParser;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCueParser;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttParser;->cueParser:Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCueParser;

    new-instance v0, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttParser;->parsableWebvttData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    new-instance v0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttParser;->webvttCueBuilder:Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;

    return-void
.end method


# virtual methods
.method public final canParse(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "text/vtt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parse([BII)Lorg/telegram/messenger/exoplayer/text/Subtitle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttParser;->parse([BII)Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttSubtitle;

    move-result-object v0

    return-object v0
.end method

.method public final parse([BII)Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttSubtitle;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttParser;->parsableWebvttData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    add-int v2, p2, p3

    invoke-virtual {v1, p1, v2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset([BI)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttParser;->parsableWebvttData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1, p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->setPosition(I)V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttParser;->webvttCueBuilder:Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->reset()V

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttParser;->parsableWebvttData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttParserUtil;->validateWebvttHeaderLine(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttParser;->parsableWebvttData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttParser;->cueParser:Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCueParser;

    iget-object v2, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttParser;->parsableWebvttData:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttParser;->webvttCueBuilder:Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCueParser;->parseNextValidCue(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttParser;->webvttCueBuilder:Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->build()Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttParser;->webvttCueBuilder:Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttCue$Builder;->reset()V

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttSubtitle;

    invoke-direct {v1, v0}, Lorg/telegram/messenger/exoplayer/text/webvtt/WebvttSubtitle;-><init>(Ljava/util/List;)V

    return-object v1
.end method