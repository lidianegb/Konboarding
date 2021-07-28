# Konboarding Framework

## ✅ A primeira impressão é a que fica!

Konboarding é um framework que tem como objetivo automatizar a experiência que seu usuário terá no primeiro contato com seu aplicativo. Konboarding permite a você criar páginas customizadas para Onboarding de forma rápida e prática.

## 📌 Importante

O projeto deve ser executado utilizando o target de KonboardingProject, tendo em vista que ainda não foi distribuída a versão com o devido gerenciador de dependências.

## 🔖 Como usar

### Crie uma PageViewController
Para ter uma Onboarding é necessário criar páginas que contenham um título, descrição e imagem e passá-los para nossa PageViewController.

1. titleDescription
2. textDescription
3. imageName

~~~ ObjectiveC
PageViewController * pageViewController1 = [[PageViewController alloc] initWithTitle:@"What is Lorem Ipsum?" text:@"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book." imageName:@"imageTest"];
~~~

Há propriedades que você pode alterar para customizar sua página. Observe o exemplo abaixo.

~~~ ObjectiveC
    pageViewController1.backgroundColor = [UIColor blueColor];
    pageViewController1.titleColor = [UIColor whiteColor];
    pageViewController1.textColor = [UIColor whiteColor];
    pageViewController1.buttonCloseColor = [UIColor whiteColor];
    pageViewController1.buttonPreviewColor = [UIColor whiteColor];
    pageViewController1.buttonNextColor = [UIColor whiteColor];
~~~


### Instancie KonboardingViewController
Essa é a nossa Controller principal, passe todas as páginas desejadas e apresente sua Onboarding. Prontinho!

Exemplo:

~~~ ObjectiveC
    KonboardingViewController * konboardingViewController = [[KonboardingViewController alloc] initWithContent:@[pageViewController1, pageViewController2, pageViewController3]];
    konboardingViewController.modalInPresentation = YES;
    
    [self.navigationController presentViewController:konboardingViewController animated:YES completion:nil];
~~~

## 📝 License

Este projeto está disponível sob a licença do MIT. Consulte LICENSE.txt para obter detalhes.

