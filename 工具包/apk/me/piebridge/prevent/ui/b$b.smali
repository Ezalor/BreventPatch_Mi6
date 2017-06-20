.class Lme/piebridge/prevent/ui/b$b;
.super Ljava/lang/Object;
.source "PreventFragment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/piebridge/prevent/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lme/piebridge/prevent/ui/b$b;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    const-string v0, ""

    iput-object v0, p0, Lme/piebridge/prevent/ui/b$b;->b:Ljava/lang/String;

    .line 425
    iput-object p1, p0, Lme/piebridge/prevent/ui/b$b;->c:Ljava/lang/String;

    .line 426
    if-eqz p2, :cond_d

    .line 427
    iput-object p2, p0, Lme/piebridge/prevent/ui/b$b;->b:Ljava/lang/String;

    .line 429
    :cond_d
    iput-object p3, p0, Lme/piebridge/prevent/ui/b$b;->d:Ljava/util/Set;

    .line 430
    return-void
.end method


# virtual methods
.method public a(Lme/piebridge/prevent/ui/b$b;)I
    .registers 5

    .prologue
    .line 448
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p0}, Lme/piebridge/prevent/ui/b$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lme/piebridge/prevent/ui/b$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(I)Lme/piebridge/prevent/ui/b$b;
    .registers 2

    .prologue
    .line 433
    iput p1, p0, Lme/piebridge/prevent/ui/b$b;->a:I

    .line 434
    return-object p0
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 438
    iget v0, p0, Lme/piebridge/prevent/ui/b$b;->a:I

    invoke-static {v0}, Lme/piebridge/prevent/a/f;->a(I)Z

    move-result v0

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 417
    check-cast p1, Lme/piebridge/prevent/ui/b$b;

    invoke-virtual {p0, p1}, Lme/piebridge/prevent/ui/b$b;->a(Lme/piebridge/prevent/ui/b$b;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 453
    instance-of v0, p1, Lme/piebridge/prevent/ui/b$b;

    if-eqz v0, :cond_e

    check-cast p1, Lme/piebridge/prevent/ui/b$b;

    invoke-virtual {p0, p1}, Lme/piebridge/prevent/ui/b$b;->a(Lme/piebridge/prevent/ui/b$b;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 458
    invoke-virtual {p0}, Lme/piebridge/prevent/ui/b$b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lme/piebridge/prevent/ui/b$b;->d:Ljava/util/Set;

    if-nez v0, :cond_38

    const-string v0, "1"

    :goto_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lme/piebridge/prevent/ui/b$b;->a()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "1"

    :goto_17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lme/piebridge/prevent/ui/b$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lme/piebridge/prevent/ui/b$b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38
    const-string v0, "0"

    goto :goto_b

    :cond_3b
    const-string v0, "0"

    goto :goto_17
.end method
