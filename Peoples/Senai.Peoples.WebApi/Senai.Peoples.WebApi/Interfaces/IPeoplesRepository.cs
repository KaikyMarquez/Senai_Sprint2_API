using Senai.Peoples.WebApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.Peoples.WebApi.Interfaces
{
    interface IPeoplesRepository
    {
        List<PeoplesDomain> ListarTodos();
        PeoplesDomain BuscarPorId(int id);
        void Cadastrar(PeoplesDomain novoNome);
        void AtualizarIdCorpo(PeoplesDomain Nome);
        void Deletar(int id);
    }
}
