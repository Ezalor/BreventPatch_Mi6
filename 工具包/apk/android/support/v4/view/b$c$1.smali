.class Landroid/support/v4/view/b$c$1;
.super Ljava/lang/Object;
.source "AccessibilityDelegateCompat.java"

# interfaces
.implements Landroid/support/v4/view/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/b$c;->a(Landroid/support/v4/view/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/view/b;

.field final synthetic b:Landroid/support/v4/view/b$c;


# direct methods
.method constructor <init>(Landroid/support/v4/view/b$c;Landroid/support/v4/view/b;)V
    .registers 3

    .prologue
    .line 232
    iput-object p1, p0, Landroid/support/v4/view/b$c$1;->b:Landroid/support/v4/view/b$c;

    iput-object p2, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 273
    iget-object v0, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    .line 274
    invoke-virtual {v0, p1}, Landroid/support/v4/view/b;->a(Landroid/view/View;)Landroid/support/v4/view/a/e;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/support/v4/view/a/e;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public a(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 263
    iget-object v0, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->a(Landroid/view/View;I)V

    .line 264
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    new-instance v1, Landroid/support/v4/view/a/b;

    invoke-direct {v1, p2}, Landroid/support/v4/view/a/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/b;->a(Landroid/view/View;Landroid/support/v4/view/a/b;)V

    .line 248
    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    .prologue
    .line 280
    iget-object v0, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/b;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    .prologue
    .line 236
    iget-object v0, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 5

    .prologue
    .line 258
    iget-object v0, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/b;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 242
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .prologue
    .line 252
    iget-object v0, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 253
    return-void
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .prologue
    .line 268
    iget-object v0, p0, Landroid/support/v4/view/b$c$1;->a:Landroid/support/v4/view/b;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/b;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 269
    return-void
.end method
