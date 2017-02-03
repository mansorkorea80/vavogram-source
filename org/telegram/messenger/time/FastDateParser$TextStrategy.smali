.class Lorg/telegram/messenger/time/FastDateParser$TextStrategy;
.super Lorg/telegram/messenger/time/FastDateParser$Strategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextStrategy"
.end annotation


# instance fields
.field private final field:I

.field private final keyValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/util/Calendar;Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/time/FastDateParser$Strategy;-><init>(Lorg/telegram/messenger/time/FastDateParser$1;)V

    iput p1, p0, Lorg/telegram/messenger/time/FastDateParser$TextStrategy;->field:I

    #calls: Lorg/telegram/messenger/time/FastDateParser;->getDisplayNames(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;
    invoke-static {p1, p2, p3}, Lorg/telegram/messenger/time/FastDateParser;->access$200(ILjava/util/Calendar;Ljava/util/Locale;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/time/FastDateParser$TextStrategy;->keyValues:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method addRegex(Lorg/telegram/messenger/time/FastDateParser;Ljava/lang/StringBuilder;)Z
    .locals 4

    const/16 v1, 0x28

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/telegram/messenger/time/FastDateParser$TextStrategy;->keyValues:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    #calls: Lorg/telegram/messenger/time/FastDateParser;->escapeRegex(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    invoke-static {p2, v0, v2}, Lorg/telegram/messenger/time/FastDateParser;->access$100(Ljava/lang/StringBuilder;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x7c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x29

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/4 v1, 0x1

    return v1
.end method

.method setCalendar(Lorg/telegram/messenger/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 6

    iget-object v3, p0, Lorg/telegram/messenger/time/FastDateParser$TextStrategy;->keyValues:Ljava/util/Map;

    invoke-interface {v3, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " not in ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/telegram/messenger/time/FastDateParser$TextStrategy;->keyValues:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x29

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget v3, p0, Lorg/telegram/messenger/time/FastDateParser$TextStrategy;->field:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/util/Calendar;->set(II)V

    return-void
.end method
